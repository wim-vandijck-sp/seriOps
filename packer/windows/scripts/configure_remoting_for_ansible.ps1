Write-Output "Downloading ConfigureRemotingforAnsible.ps1"

$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:temp\ConfigureRemotingForAnsible.ps1"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)

powershell.exe -ExecutionPolicy ByPass -File $file -ForceNewSSLCert

#New-Item -Path ‘HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NetFramework\v4.0.30319’ -Name 'SchUseStrongCrypto' -Value '1' -PropertyType DWORD

# Write-Output "Downloading and installing nuget"
# $url = "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe"
# $file = "$env:temp\nuget.exe" 

# (New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)

# $file

#https://docs.ansible.com/ansible/latest/user_guide/windows_performance.html
Write-Output "Optimizing Powershell Assemblies"
function Optimize-PowershellAssemblies {
  # NGEN powershell assembly, improves startup time of powershell by 10x
  $old_path = $env:path
  try {
    $env:path = [Runtime.InteropServices.RuntimeEnvironment]::GetRuntimeDirectory()
    [AppDomain]::CurrentDomain.GetAssemblies() | % {
      if (! $_.location) {continue}
      $Name = Split-Path $_.location -leaf
      if ($Name.startswith("Microsoft.PowerShell.")) {
        Write-Progress -Activity "Native Image Installation" -Status "$name"
        ngen install $_.location | % {"`t$_"}
      }
    }
  } finally {
    $env:path = $old_path
  }
}
Optimize-PowershellAssemblies

Write-Output "Enabling basic auth for WinRM"
Set-Item -Path WSMan:\localhost\Service\Auth\Basic -Value $true

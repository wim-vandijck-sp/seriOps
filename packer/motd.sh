#!/bin/sh -eux

# https://patorjk.com/software/taag/#p=display&f=Big&t=SERI%20Gibraltar
seri=$(cat <<'END_HEREDOC'
   _____ ______ _____  _____    _____ _ _               _ _             
  / ____|  ____|  __ \|_   _|  / ____(_) |             | | |            
 | (___ | |__  | |__) | | |   | |  __ _| |__  _ __ __ _| | |_ __ _ _ __ 
  \___ \|  __| |  _  /  | |   | | |_ | | '_ \| '__/ _` | | __/ _` | '__|
  ____) | |____| | \ \ _| |_  | |__| | | |_) | | | (_| | | || (_| | |   
 |_____/|______|_|  \_\_____|  \_____|_|_.__/|_|  \__,_|_|\__\__,_|_|   


Welcome to the SE Reference Implementation! [SERI v. Gibraltar]

For a general documentation, please visit http://seri.saiplointdemo.com.'
END_HEREDOC
)
if [ -d /etc/update-motd.d ]; then
    MOTD_CONFIG='/etc/update-motd.d/99-seri'

    cat >> "$MOTD_CONFIG" <<SERI
#!/bin/sh

cat <<'EOF'
$seri
EOF
SERI

    chmod 0755 "$MOTD_CONFIG"
else
    echo "$seri" >> /etc/motd
fi

#!/bin/sh -eux

seri='
 _____ ___________ _____  ______     _                _         
/  ___|  ___| ___ \_   _| |  ___|   | |              | |        
\ `--.| |__ | |_/ / | |   | |_ _   _| | ___   _  ___ | | ____ _ 
 `--. \  __||    /  | |   |  _| | | | |/ / | | |/ _ \| |/ / _` |
/\__/ / |___| |\ \ _| |_  | | | |_| |   <| |_| | (_) |   < (_| |
\____/\____/\_| \_|\___/  \_|  \__,_|_|\_\\__,_|\___/|_|\_\__,_|
                                                                
                                                                

Welcome to the SE Reference Implementation! [SERI v. Fukuoka M1]

For a general documentation, please visit http://seri.saiplointdemo.com.'

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

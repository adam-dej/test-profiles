#!/bin/sh

unzip -o zstd-v1.3.4-win64.zip

cat > compress-zstd <<EOT
#!/bin/sh
./zstd.exe -19 ubuntu-16.04.3-server-i386.img > /dev/null 2>&1
EOT
chmod +x compress-zstd

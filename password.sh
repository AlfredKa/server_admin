length = 12
password = $(< /dev/urandom tr -dc _A-Z-a-z-0-9 |   head -c$length)
echo "Generated password:  $password" 

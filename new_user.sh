groups=($1 adm dialout cdrom sudo audio video plugdev games users input netdev spi i2c gpio)

if [ ! -z ${1+x} ]; then
  sudo adduser $1

  for group in "${groups[@]}"; do
    sudo adduser $1 $group
  done
else
  echo "Please include argument..."
fi

#Actualizar lista de MirrorList
``` sh
sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
```
#Actualizar Sistema
``` sh
sudo pacman -Syu
```

#Actualizar Sistema usando yay
``` sh
yay
```

#Eliminar cache de descargas de programas
``` sh
du -sh /var/cache/pacman/pkg/
du -sh ~/.cache/yay
sudo pacman -Scc
yay -Scc
```

#Eliminar paquetes huerfanos
``` sh
sudo pacman -Rns $(pacman -Qdtq)
```

#Eliminar cache
``` sh
du -sh .cache
rm -rf .cache/*
```

#Eliminar configuraciones (cuidado)
``` sh
du -sh .config
```

#Revisar servicios de systemD
``` sh
systemctl --failed
sudo journalctl -p 3 -xb
```

#Eliminar registro de journal
``` sh
du -sh /var/log/journal
rm -rf /var/log/journal/*
```
#Instala fdisk
``` sh
sudo pacman -S udisks2
```

#Lista particiones de dispositivos de almacenamiento con información detallada
``` sh
sudo fdisk -l
```

#Monta la partición /dev/sda1 con udisksctl (Puede aparecer en ./run)
``` sh
udisksctl mount -b /dev/sda1
```

#Desmonta la partición /dev/sda1 con udisksctl
``` sh
udisksctl unmount -b /dev/sda1
```

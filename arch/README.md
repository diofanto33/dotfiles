<center> <h3> Actualizar lista de MirrorList <h3> </center> 

``` sh
sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
```
<center> <h3> Actualizar Sistema <h3> </center>

``` sh
sudo pacman -Syu
```

<center> <h3> Actualizar Sistema usando yay <h3> </center>

``` sh
yay
```

<center> <h3> Eliminar cache de descargas de programas <h3> </center>

``` sh
du -sh /var/cache/pacman/pkg/
du -sh ~/.cache/yay
sudo pacman -Scc
yay -Scc
```

<center> <h3> Eliminar paquetes huerfanos <h3> </center>

``` sh
sudo pacman -Rns $(pacman -Qdtq)
```

<center> <h3> Eliminar cache <h3> </center>

``` sh
du -sh .cache
rm -rf .cache/*
```

<center> <h3>Eliminar configuraciones (cuidado) <h3> </center>

``` sh
du -sh .config
```

<center> <h3> Revisar servicios de systemD <h3> </center>

``` sh
systemctl --failed
sudo journalctl -p 3 -xb
```

<center> <h3> Eliminar registro de journal <h3> </center>

``` sh
du -sh /var/log/journal
rm -rf /var/log/journal/*
```
<center> <h3> Instala fdisk <h3> </center>

``` sh
sudo pacman -S udisks2
```

<center> <h3> Lista particiones de dispositivos de almacenamiento con información detallada <h3> </center>

``` sh
sudo fdisk -l
```

<center> <h3> Monta la partición /dev/sda1 con udisksctl (./run) <h3> </center> 

``` sh
udisksctl mount -b /dev/sda1
```

<center> <h3> Desmonta la partición /dev/sda1 con udisksctl <h3> </center>

``` sh
udisksctl unmount -b /dev/sda1
```

<center> <h3> Subir brillo <h3> </center>

``` sh
xbacklight -inc -10
```

<center> <h3> Bajar brillo <h3> </center>

``` sh
xbacklight -dec -10
```

```
~/.local/share/xorg/Xorg.0.log
```

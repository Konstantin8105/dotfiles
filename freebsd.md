# Install [freebsd](https://www.freebsd.org)

Use all by default



Enter from *root*

Use `mate` :

```
pkg install -y nano xorg xfce slim slim-themes
sysrc dbus_enable=yes
sysrc hald_enable=yes
sysrc slim_enable=yes
sysrc sound_load=yes
sysrc snd_hda_load=yes
```

`nano /home/youruser/.xinitrc` add `exec startxfce`

`pkg install -y firefox libreoffice gimp thunderbird vlc`

`reboot`

`pkg install -y xfce-mixer`



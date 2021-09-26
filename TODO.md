# Setup locale
Append the following in /etc/locale.gen
to enable wanted locale config (mixture of GB and BG locales)

```
en_US.UTF-8 UTF-8
# en_GB ISO-8859-1
# en_GB.ISO-8859-15 ISO-8859-15
en_GB.UTF-8 UTF-8
# bg_BG CP1251
bg_BG.UTF-8 UTF-8
```

# Driver for PixelAuth PXAT / PT2887-CI Match-On-Chip sensors

## How to use

1. Get Archlinux libfprint-pxat-git package

Download in current repo releases assets `libfprint-pxat-driver-git-<VERSION>-x86_64.pkg.tar.zst`

Or

```
git clone https://github.com/zbinlin/libfprint-pxat-driver.git
cd libfprint-pxat-driver
./build.sh
ls
# File libfprint-pxat-driver-git-<VERSION>-x86_64.pkg.tar.zst in current directory
```


2. Uninstall original libfprint package (if installed)

```
sudo pacman -R libfprint fprintd
```


3. Installl libfprint-pxat-git package


```
sudo pacman -U libfprint-pxat-driver-<VERSION>-x86_64.pkg.tar.zst
sudo pacman -S fprintd
```

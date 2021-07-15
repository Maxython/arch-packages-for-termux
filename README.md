# arch-packages-for-termux
This is where the arch packages are configured to run the arch command on termux.  

At the moment, packages are only available on the `aarch64` architecture, except for the profile package and termux-commands.

## Compiling packages:
You can compile them for your architecture, but you need to do it on [TermuxArch](https://github.com/SDRausty/TermuxArch) (maybe in the near future, I will configure makepkg to compile in termux).  

To compile a package, you must run these commands:
```bash
# Cloning a package repository.
# But you can also just install the PKGBUILD of the package via wget.
git clone https://github.com/Maxython/arch-packages-for-termux

cd arch-packages-for-termux/${package_name}

# Compiler launch.
makepkg -g >> PKGBUILD && makepkg
```

## Installation steps for all packages.
To install these packages, you need to go through 3 steps.
### First stage.
This step installs the following packages:
* bash
* glibc
* ncurses
* profile
* readline
* termux-commands

Installation command:
```bash
# Installing an archive with these packages.
wget https://github.com/Maxython/arch-packages-for-termux/releases/download/installation-steps-2021.07.15/FirstInstallation-${arch}.tar.xz
tar xJf FirstInstallation-${arch}.tar.xz
cd FirstInstallation

# Installing packages.
pacman -U * --overwrite "*"
```
### Second stage.
To do this, you already need to run the following command:
```bash
pacman -Sdd libcap libcap-ng util-linux util-linux-libs coreutils acl attr --overwrite "*"

# !!! Attention !!!
# If you do not run the following command then termux will not start because of this command.
rm /bin/login
```
### Stage three.
This step installs the following packages:
* bzip2
* curl
* fakeroot
* gpgme
* libarchive
* libassuan
* libgpg-error
* libnghttp2
* libssh2
* libxml2
* openssl
* xz
* zlib

Installation command:
```bash
# Installing an archive with these packages.
wget https://github.com/Maxython/arch-packages-for-termux/releases/download/installation-steps-2021.07.15/SecondInstallation-aarch64.tar.xz
tar xJf SecondInstallation-aarch64.tar.xz
cd SecondInstallation

# Installing packages.
pacman -U * --overwrite "*"
```
**Attention**: an error may appear at this stage, but it is already a matter of time when they disappear.

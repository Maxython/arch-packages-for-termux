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

## Installing packages.
Command:
```bash
# Installing an archive with these packages.
wget https://github.com/Maxython/arch-packages-for-termux/releases/download/installation-steps-2021.08.03/SecondInstallation-${arch}.tar.xz
tar xJf SecondInstallation-${arch}.tar.xz
cd SecondInstallation

# Installing packages.
pacman -U * --overwrite "*"
```
**Attention**: an error may appear at this stage, but it is already a matter of time when they disappear.

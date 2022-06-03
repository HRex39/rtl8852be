# RTL8852BE
![github](https://img.shields.io/badge/Kernel<5.18-success-brightgreen.svg?style=for-the-badge&logo=linux&logoColor=ffffff)  
![github](https://img.shields.io/badge/Kernel>=5.18-test--pending-red.svg?style=for-the-badge&logo=linux&logoColor=ffffff)  
![github](https://img.shields.io/badge/-bluetooth_unsupported-lightgrey.svg?style=for-the-badge&logo=bluetooth&logoColor=ffffff)  
## LTS
![github](https://img.shields.io/badge/-Ubuntu-555555.svg?style=for-the-badge&logo=ubuntu&logoColor=E95420)  
Support CI/CD based on Github-hosted runners: Ubuntu 18.04, Ubuntu 20.04, Ubuntu 22.04.  
Especially for Arch Linux, You can test for yourself or refer to issues.  
💀:the dev is overwhelmed.  
## Unstable
![github](https://img.shields.io/badge/-Debian-555555.svg?style=for-the-badge&logo=debian)
![github](https://img.shields.io/badge/-Centos-555555.svg?style=for-the-badge&logo=centos)
![github](https://img.shields.io/badge/-Arch-555555.svg?style=for-the-badge&logo=archlinux&logoColor=ffffff)
![github](https://img.shields.io/badge/-Others-555555.svg?style=for-the-badge&logo=linux&logoColor=ffffff)
## Introduction
This code is cloned from [TinkerBoard2/kernel](https://github.com/TinkerBoard2/kernel) and it's author is Rock_Shen (rock_shen@asus.com).  
The default compilation option is i386_PC For Linux, you can also change the compilation options of MAKEFILE in line149.  
## Prerequisites
```
build-essential 
linux-headers
bc
```
## Build(for kernel < 5.18)[stable]
```
Turn off your Security Boot in BIOS

git clone https://github.com/HRex39/rtl8852be.git
make -j8
sudo make install
```

## Build(for kernel >= 5.18)[pending]
```
Turn off your Security Boot in BIOS

git clone https://github.com/HRex39/rtl8852be.git -b dev
make -j8
sudo make install
```

## WHAT IS LINUX?
```
WHAT IS LINUX?

  Linux is a clone of the operating system Unix, written from scratch by
  Linus Torvalds with assistance from a loosely-knit team of hackers across
  the Net. It aims towards POSIX and Single UNIX Specification compliance.

  It has all the features you would expect in a modern fully-fledged Unix,
  including true multitasking, virtual memory, shared libraries, demand
  loading, shared copy-on-write executables, proper memory management,
  and multistack networking including IPv4 and IPv6.

  It is distributed under the GNU General Public License - see the
  accompanying COPYING file for more details. 
```

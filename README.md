# RTL8852BE
## Introduction
This code is cloned from [TinkerBoard2/kernel](https://github.com/TinkerBoard2/kernel) and it's author is Rock_Shen (rock_shen@asus.com).  
The default compilation option is i386_PC For Linux, you can also change the compilation options of MAKEFILE in line149.  
## Prerequisites
```
build-essential 
linux-headers
bc
```
## Build(for kernel < 5.15)
```
Turn off your Security Boot in BIOS

git clone https://github.com/HRex39/rtl8852be.git
make -j8
sudo make install
```

## Build(for kernel >= 5.15)[not stable]
```
Turn off your Security Boot in BIOS

git clone https://github.com/HRex39/rtl8852be.git -b dev-linux5.17
make -j8
sudo make install
```
according to this [issue](https://github.com/HRex39/rtl8852be/issues/1#issuecomment-1113270944), the new branch seems not really stable, but hardware seems to work just fine.   
Expect more tests or feedback.  

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

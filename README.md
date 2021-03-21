# linux-rt-libre-bjx4

de-blobbed linux kernel with the CONFIG_PREEMPT_RT patch, gentoo's sys-kernel/rt-sources package patches and some others custom patches 

Current kernel branch: 4.19 (as of 20 March 2021)



`Installation instructions (in case you don't know how to compile a linux kernel, but it's the normal process if you already know):`

First, you want to clone the repo and go into the sources directory
```
git clone https://github.com/ByJumperX4/linux-rt-libre-bjx4.git

cd linux-rt-libre-bjx4/sources
```

Then, you'll probably want to configure the kernel, but if you have the same specs as me (see my [dotfiles](http://github.com/ByJumperX4/dotfiles.git)), you can just use my .config file, to do that, you can `cp ../custom/.config .` otherwise, you'll have to configure it by yourself:

```
make nconfig
```

You may refer to [Gentoo's wiki about kernel manual configuration](https://wiki.gentoo.org/wiki/Kernel/Configuration#Configuration) to configure that

Once you have configured you kernel, it's time to install it. I recommend to do a clean and complete compilation everytime.

```
make clean all install modules_install
```

And now, the kernel is installed ! You may also need to create an [initramfs](https://wiki.gentoo.org/wiki/Initramfs)

Don't forget to update your bootloader after installing !

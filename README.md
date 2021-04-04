# linux-rt-libre-bjx4

de-blobbed linux kernel with the CONFIG_PREEMPT_RT patch and some others custom patches coming from various places like Manjaro's kernel 

Current kernel branch: 4.19 (as of 4 April 2021)



`Installation instructions (in case you don't know how to compile a linux kernel, but it's the normal process if you already know):`

First, you want to clone the repo and clone kernel.org's kernel source code
```
git clone https://github.com/ByJumperX4/linux-rt-libre-bjx4.git

cd linux-rt-libre-bjx4

git submodule init

```

Cloning the kernel source may be long, as it's very big

Next, copy the sources into a working directory, got into that working directory, patch the kernel's sources and remove all the proprietary blobs

```

cp -r sources work

cd work

sh ../patch.sh

cp ../cp deblob-check ../deblob-main ./

sh ../deblob-4.19

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

You may want to add a -j option after the `make` command, like `make clean all install modules_install -j12` the number you set will specify the number of jobs to use.
Generally, using a bit less than the number of threads your CPU(s) have(s) is a decent choice, As I have 2 CPUs with 12 threads each, I use `-j20` to leave 4 threads to the rest of my system during the compilation, or I use `-j16` if I have to do something pretty heavy during the compilation.

And now, the kernel is installed ! You may also need to create an [initramfs](https://wiki.gentoo.org/wiki/Initramfs)

Don't forget to update your bootloader after installing !


To update the kernel, do the following:


Go into the repository

```

cd <whatever>/linux-rt-libre-bjx4

```

Copy your working `.config` file so you don't have to do it again

```

cp work/.config ./.config-backup

```

Next, remove your work directory

```

rm -rf work/

```

Next, update both this repository and the kernel source

```

git pull

cd sources/

git pull

cd ..

```

Then copy again the source code to a working directory, patch it and deblot it. But this time, you also copy your .config

```

cp -r sources work

cd work

sh ../patch.sh

cp ../cp deblob-check ../deblob-main ./

sh ../deblob-4.19

cp ../.config-backup ./.config

```

Now, it's time to compile the kernel again. you'll have to update the config and just compile it again

```

make oldconfig

make clean all install modules_install

```

Don't forget to add a -j argument to speed up the build and to make an initramfs and update your bootloader.

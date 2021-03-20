cmd_scripts/basic/fixdep := gcc -Wp,-MD,scripts/basic/.fixdep.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89         -o scripts/basic/fixdep scripts/basic/fixdep.c   

source_scripts/basic/fixdep := scripts/basic/fixdep.c

deps_scripts/basic/fixdep := \
    $(wildcard include/config/his/driver.h) \
    $(wildcard include/config/my/option.h) \
    $(wildcard include/config/foo.h) \
  /usr/include/stdc-predef.h \
  /usr/include/sys/types.h \
  /usr/include/features.h \
  /usr/include/sys/cdefs.h \
  /usr/include/bits/wordsize.h \
  /usr/include/bits/long-double.h \
  /usr/include/gnu/stubs.h \
  /usr/include/gnu/stubs-64.h \
  /usr/include/bits/types.h \
  /usr/include/bits/timesize.h \
  /usr/include/bits/typesizes.h \
  /usr/include/bits/time64.h \
  /usr/include/bits/types/clock_t.h \
  /usr/include/bits/types/clockid_t.h \
  /usr/include/bits/types/time_t.h \
  /usr/include/bits/types/timer_t.h \
  /usr/lib/gcc/x86_64-pc-linux-gnu/9.2.0/include/stddef.h \
  /usr/include/bits/stdint-intn.h \
  /usr/include/endian.h \
  /usr/include/bits/endian.h \
  /usr/include/bits/endianness.h \
  /usr/include/bits/byteswap.h \
  /usr/include/bits/uintn-identity.h \
  /usr/include/sys/select.h \
  /usr/include/bits/select.h \
  /usr/include/bits/types/sigset_t.h \
  /usr/include/bits/types/__sigset_t.h \
  /usr/include/bits/types/struct_timeval.h \
  /usr/include/bits/types/struct_timespec.h \
  /usr/include/bits/select2.h \
  /usr/include/bits/pthreadtypes.h \
  /usr/include/bits/thread-shared-types.h \
  /usr/include/bits/pthreadtypes-arch.h \
  /usr/include/bits/struct_mutex.h \
  /usr/include/bits/struct_rwlock.h \
  /usr/include/sys/stat.h \
  /usr/include/bits/stat.h \
  /usr/include/bits/struct_stat.h \
  /usr/include/unistd.h \
  /usr/include/bits/posix_opt.h \
  /usr/include/bits/environments.h \
  /usr/include/bits/confname.h \
  /usr/include/bits/getopt_posix.h \
  /usr/include/bits/getopt_core.h \
  /usr/include/bits/unistd.h \
  /usr/include/bits/unistd_ext.h \
  /usr/include/fcntl.h \
  /usr/include/bits/fcntl.h \
  /usr/include/bits/fcntl-linux.h \
  /usr/include/bits/fcntl2.h \
  /usr/include/string.h \
  /usr/include/bits/libc-header-start.h \
  /usr/include/bits/types/locale_t.h \
  /usr/include/bits/types/__locale_t.h \
  /usr/include/strings.h \
  /usr/include/bits/strings_fortified.h \
  /usr/include/bits/string_fortified.h \
  /usr/include/stdlib.h \
  /usr/include/bits/waitflags.h \
  /usr/include/bits/waitstatus.h \
  /usr/include/bits/floatn.h \
  /usr/include/bits/floatn-common.h \
  /usr/include/alloca.h \
  /usr/include/bits/stdlib-bsearch.h \
  /usr/include/bits/stdlib-float.h \
  /usr/include/bits/stdlib.h \
  /usr/include/stdio.h \
  /usr/lib/gcc/x86_64-pc-linux-gnu/9.2.0/include/stdarg.h \
  /usr/include/bits/types/__fpos_t.h \
  /usr/include/bits/types/__mbstate_t.h \
  /usr/include/bits/types/__fpos64_t.h \
  /usr/include/bits/types/__FILE.h \
  /usr/include/bits/types/FILE.h \
  /usr/include/bits/types/struct_FILE.h \
  /usr/include/bits/stdio_lim.h \
  /usr/include/bits/stdio.h \
  /usr/include/bits/stdio2.h \
  /usr/include/ctype.h \

scripts/basic/fixdep: $(deps_scripts/basic/fixdep)

$(deps_scripts/basic/fixdep):
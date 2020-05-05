TARGET=psp-hello
EXTRA_TARGETS    = EBOOT.PBP
PSP_EBOOT_TITLE  = Rust Hello
PSP_FW_VERSION   = 500
PSP_LARGE_MEMORY = 0

PSPSDK=$(shell psp-config --pspsdk-path)
include ./build.mak

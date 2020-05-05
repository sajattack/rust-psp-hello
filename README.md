A simple Rust Hello World to run on a PSP.

This requires a patched psp-binutils to remove the restriction on ABI mismatches. The patch is included in this repo. This repo also assumes you have the psp sdk installed to /usr/psp/sdk/

```
make
```

This will give you an `EBOOT.PBP` which you can just copy over to your PSP and run as usual. 

Or run it with PPSSPP:

```PPSSPPSDL EBOOT.PBP```

![I'm making a note here huge success](https://i.imgur.com/gUObVat.png)

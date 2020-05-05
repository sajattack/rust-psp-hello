all:
	cargo +nightly-2020-03-15 xbuild --target ./psp.json
	psp-fixup-imports target/psp/debug/psp-hello
	psp-strip target/psp/debug/psp-hello -o target/psp/debug/psp-hello-strip.elf
	mksfo 'Rust Hello' target/psp/debug/PARAM.SFO
	pack-pbp target/psp/debug/EBOOT.PBP target/psp/debug/PARAM.SFO NULL NULL NULL NULL NULL target/psp/debug/psp-hello-strip.elf NULL

run: all
	PPSSPPSDL target/psp/debug/EBOOT.PBP

clean:
	rm -rf target

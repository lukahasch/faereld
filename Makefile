clean:
	$(MAKE) -j -C server clean
	$(MAKE) -j -C client clean
	rm -rf flake.lock

build:
	$(MAKE) -j -C server build
	$(MAKE) -j -C client build

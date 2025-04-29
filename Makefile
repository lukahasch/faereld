clean:
	$(MAKE) -j -C server clean
	$(MAKE) -j -C client clean
	rm -rf flake.lock

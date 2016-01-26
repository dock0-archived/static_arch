.PHONY : submodule

submodule:
	git submodule update --init

overlay: submodule
	cp -vnR arch/* ./
	cp arch/Makefile ./ContainerMakefile
	REPO=dock0/static_arch make -f ContainerMakefile build push

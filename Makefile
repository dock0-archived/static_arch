.PHONY : submodule overlay container manual

submodule:
	git submodule update --init

overlay: submodule
	cp -vnR arch/* ./
	cp arch/Makefile ./ContainerMakefile

container: overlay
	REPO=dock0/static_arch make -f ContainerMakefile

manual: overlay
	REPO=dock0/static_arch make -f ContainerMakefile manual

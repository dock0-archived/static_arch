.PHONY : default submodule overlay container manual

default: container

submodule:
	git submodule update --init

overlay: submodule
	mv arch/Makefile arch/ContainerMakefile
	cp -vR arch/* ./

container: overlay
	REPO=dock0/static_arch make -f ContainerMakefile

manual: overlay
	REPO=dock0/static_arch make -f ContainerMakefile manual

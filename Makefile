ifneq ($(KERNELRELEASE),)
obj-m = Hello.o
else
KERNELDIR ?= /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	rm -rf *.o *.mod.c *.ko *.symvers *.order *.markers .*.cmd .tmp_versions/

endif

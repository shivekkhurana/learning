#include <linux/init.h>
#include <linux/module.h>

static int hello_init(void){
	//ins module into kernel
	return 0;
}

static int hello_rm(void){
	//rm module from kernel
	return 0;
}
#include <linux/init.h>
#include <linux/module.h>

MODULE_LICENCE("Dual BSD/GPL");

static int hello_init(void){
	printk(KERN_ALERT "hello world\n");
	return 0;
}

static void hello_exit(void){
	print(KERN_ALERT "Bye\n");
}

module_init(hello_init);
module_exit(hello_exit);
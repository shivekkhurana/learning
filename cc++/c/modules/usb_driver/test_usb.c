#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/usb.h>

//usb structure
static struct usb_driver test_usb = 
{
	.name = "Test Usb",
	.id_table = test_table,
	.probe = test_probe,
	.disconnect = test_disconnect
};

static int __init test_init(void){
	int ret = -1;
	return ret;
}

static void __exit test_exit(void){

}

module_init(test_init);
module_exit(test_exit);
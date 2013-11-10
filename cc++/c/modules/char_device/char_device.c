#include <linux/module.h>
#include <linux/init.h>
#include <linux/fs.h> //file_operations structure to CRUD Device
#include <linux/cdev.h> //make cdev (char device) available (register device to kernel)
#include <linux/semaphore.h> // used to access semaphores; sync behaviours
#include <asm/uaccess.h> //copy_to_user, copy_from_user

//create structure for our fake device

struct fake_device{
	char data[100];
	struct semaphore sem; //semaphore is used to prevent corruption due to multiple processors acting on the same device
} virtual_device;

struct cdev *mycdev
int major_number;
int ret; //hold return value of functions because the kernel stack is small
dev_t dev_num; //hold major number provided by kernel

#define DEVICE_NAME "char_device"
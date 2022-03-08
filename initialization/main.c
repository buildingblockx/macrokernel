#include <memory/allocator/memblock.h>
#include <memory/allocator/page.h>
#include <memory/allocator/slabcache.h>
#include <memory/allocator/kmalloc.h>
#include <print.h>

int main(int argc, char **argv)
{
	pr_info("hello world\n");

	memblock_test();
	page_allocator_test();
	slab_cache_allocator_test();
	kmalloc_test();

	return 0;
}

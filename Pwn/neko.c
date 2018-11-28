#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <asm/unistd.h>
#include <asm/stat.h>

int main()
{
	char c;
	
	setvbuf(stdout, 0, 2, 0);
	setvbuf(stderr, 0, 2, 0);

	printf("*************************************************\n");
	printf("            /\\____/\\    __\n");
        printf("          .'  \"\"\"\"  `,-'  `--.__\n");
     	printf("     __,- :   -  -   ;  \" ::     `-. -.__\n");
    	printf("  ,-sssss `._  `' _,'\"     ,'~~~::`.sssss-.\n");
   	printf(" |ssssss ,' ,_`--'_    __,' ::  `  `.ssssss|\n");
  	printf("|sssssss `-._____~ `,,'_______,---_;; ssssss|\n");
   	printf(" |ssssssssss     `--'~{__   ____   ,'ssssss|\n");
    	printf("  `-ssssssssssssssssss ~~~~~~~~~~~~ ssss.-'\n");
    	printf("      `---.sssssssssssssssssssss.---' \n");
	printf("************************************************\n");
	
	printf("Hey!Do you like cats?\n");
	scanf("%c", &c);
	if(c == 'y' || c == 'Y')
		play();
	else if(c == 'n' || c == 'N')
	{
		printf("No...there is no flag for the guy who don't like cats..\n");
	}	
	else
		printf("answer my question OK?\n");
	return 0;

}

void anchovies()
{
	system("/bin/cat");
}

int play()
{
	char buf[200];
	memset(buf, 0, 200);

	printf("Huh...maby you have a change to get my flag.\n");
	printf("If you can solve my puzzle :p\n");
	printf("                             ,\n");
        printf("      ,-.       _,---._ __  / \\  \n");
        printf("     /  )    .-'       `./ /   \\  \n");
        printf("    (  (   ,'            `/    /|  \n");
        printf("     \\  `-\"             \\'\\   / |   \n");
        printf("      `.              ,  \\ \\ /  |     \n");
        printf("       /`.          ,'-`----Y   |      \n");
        printf("      (            ;        |   '      \n");
        printf("      |  ,-.    ,-'         |  /        \n");
        printf("      |  | (   |            | /          \n");
        printf("      )  |  \\  `.___________|/           \n");
        printf("      `--'   `--'\")                       \n");

	printf("Help this cat found his anchovies:\n");

	read(0, buf, 400);
	
	
	printf("Where are the anchovies?\n");

	
	return 0;
}


__asm__(
	".align\n"
	".globl Meow\n"
	"Meow:\n"

	"pop %edi\n\t"
	"xor %edx, %edx\n\t"
	"pop %esi\n\t"
	"mov $0xcafebabe, %ebp\n\t"
	"ret\n\t"
/*******************************************/
	"pop %esi\n\t"
	"xor %ebx, %edx\n\t"
	"pop %ebp\n\t"
	"mov $0xdeadbabe,%edi\n\t"
	"ret\n\t"
/********************************************/
	"mov $0xdeadbeef,%edi\n\t"
	"xchg %ecx, %edx\n\t"
	"pop %ebp\n\t"
	"mov $0xdefaced0,%edx\n\t"
	"ret\n\t"
/********************************************/
	"pop %edi\n\t"
	"mov %edx, (%ecx)\n\t"
	"pop %ebp\n\t"
	"pop %ebx\n\t"
	"xor %bl, (%ecx)\n\t"
	"ret\n\t"
	
	);	

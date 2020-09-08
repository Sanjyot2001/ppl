	.file	"A-5.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$10, 4(%esp)
	movl	(%esp), %eax
	cmpl	4(%esp), %eax
	jle	L2
	movl	$3, 12(%esp)
	movl	$2, 8(%esp)
	jmp	L3
L2:
	movl	$2, 12(%esp)
	movl	$3, 8(%esp)
L3:
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"

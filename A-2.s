	.file	"A-2.c"
	.text
	.comm	_Z, 4, 2
	.globl	_f
	.def	_f;	.scl	2;	.type	32;	.endef
_f:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	_Z, %eax
	movl	%eax, -12(%ebp)
	cmpl	$9, -12(%ebp)
	jg	L2
	movl	$5, -4(%ebp)
	movl	$17, -8(%ebp)
	jmp	L3
L2:
	movl	$6, -4(%ebp)
	movl	$20, -8(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L3
	movl	$0, -8(%ebp)
L3:
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, _Z
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"

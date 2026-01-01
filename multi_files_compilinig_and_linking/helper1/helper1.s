	.file	"helper1.c"
	.text
	.def	heavy_compute;	.scl	3;	.type	32;	.endef
	.seh_proc	heavy_compute
heavy_compute:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L3:
	movl	16(%rbp), %eax
	imull	-8(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-1840700269, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	sarl	$2, %edx
	movl	%eax, %ecx
	sarl	$31, %ecx
	subl	%ecx, %edx
	movl	%edx, %ecx
	sall	$3, %ecx
	subl	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, %edx
	addl	%edx, -4(%rbp)
	movl	16(%rbp), %eax
	andl	$3, %eax
	movl	-8(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	xorl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L2:
	cmpl	$99999, -8(%rbp)
	jle	.L3
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	helper1_calc_0
	.def	helper1_calc_0;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_calc_0
helper1_calc_0:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	movl	%eax, %ecx
	call	heavy_compute
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	helper1_calc_1
	.def	helper1_calc_1;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_calc_1
helper1_calc_1:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	call	heavy_compute
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	helper1_calc_2
	.def	helper1_calc_2;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_calc_2
helper1_calc_2:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %ecx
	call	heavy_compute
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	helper1_calc_3
	.def	helper1_calc_3;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_calc_3
helper1_calc_3:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	addl	$3, %eax
	movl	%eax, %ecx
	call	heavy_compute
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	helper1_calc_4
	.def	helper1_calc_4;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_calc_4
helper1_calc_4:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %ecx
	call	heavy_compute
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	helper1_calc_5
	.def	helper1_calc_5;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_calc_5
helper1_calc_5:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	addl	$5, %eax
	movl	%eax, %ecx
	call	heavy_compute
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	helper1_calc_6
	.def	helper1_calc_6;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_calc_6
helper1_calc_6:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	addl	$6, %eax
	movl	%eax, %ecx
	call	heavy_compute
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	helper1_calc_7
	.def	helper1_calc_7;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_calc_7
helper1_calc_7:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	addl	$7, %eax
	movl	%eax, %ecx
	call	heavy_compute
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	helper1_calc_8
	.def	helper1_calc_8;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_calc_8
helper1_calc_8:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	addl	$8, %eax
	movl	%eax, %ecx
	call	heavy_compute
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	helper1_calc_9
	.def	helper1_calc_9;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_calc_9
helper1_calc_9:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	addl	$9, %eax
	movl	%eax, %ecx
	call	heavy_compute
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "helper1_fun started\0"
.LC1:
	.ascii "helper1_fun done: %d\12\0"
	.text
	.globl	helper1_fun
	.def	helper1_fun;	.scl	2;	.type	32;	.endef
	.seh_proc	helper1_fun
helper1_fun:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, -4(%rbp)
	movl	$1, %ecx
	call	helper1_calc_0
	addl	%eax, -4(%rbp)
	movl	$2, %ecx
	call	helper1_calc_1
	addl	%eax, -4(%rbp)
	movl	$3, %ecx
	call	helper1_calc_2
	addl	%eax, -4(%rbp)
	movl	$4, %ecx
	call	helper1_calc_3
	addl	%eax, -4(%rbp)
	movl	$5, %ecx
	call	helper1_calc_4
	addl	%eax, -4(%rbp)
	movl	$6, %ecx
	call	helper1_calc_5
	addl	%eax, -4(%rbp)
	movl	$7, %ecx
	call	helper1_calc_6
	addl	%eax, -4(%rbp)
	movl	$8, %ecx
	call	helper1_calc_7
	addl	%eax, -4(%rbp)
	movl	$9, %ecx
	call	helper1_calc_8
	addl	%eax, -4(%rbp)
	movl	$10, %ecx
	call	helper1_calc_9
	addl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev2, Built by MSYS2 project) 14.2.0"
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef

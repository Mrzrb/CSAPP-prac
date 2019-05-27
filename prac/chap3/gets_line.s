	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	_getss                  ## -- Begin function getss
	.p2align	4, 0x90
_getss:                                 ## @getss
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	jmp	LBB0_1
	.p2align	4, 0x90
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	%al, (%r14,%rbx)
	incq	%rbx
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	callq	_getchar
	cmpl	$-1, %eax
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$10, %eax
	jne	LBB0_3
	jmp	LBB0_6
LBB0_4:
	testq	%rbx, %rbx
	je	LBB0_5
LBB0_6:
	movb	$10, (%r14,%rbx)
	jmp	LBB0_7
LBB0_5:
	xorl	%r14d, %r14d
LBB0_7:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_line               ## -- Begin function get_line
	.p2align	4, 0x90
_get_line:                              ## @get_line
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	leaq	-20(%rbp), %r14
	movq	%r14, %rdi
	callq	_getss
	movq	%r14, %rdi
	callq	_strlen
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_strcpy
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	call __stack_chk_fail
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	_get_line
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols

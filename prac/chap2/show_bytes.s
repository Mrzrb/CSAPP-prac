	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	_zshow_bytes            ## -- Begin function zshow_bytes
	.p2align	4, 0x90
_zshow_bytes:                           ## @zshow_bytes
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%r14, %r14
	je	LBB0_3
## %bb.1:
	leaq	L_.str(%rip), %r15
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	_printf
	incq	%rbx
	decq	%r14
	jne	LBB0_2
LBB0_3:
	movl	$10, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_putchar                ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	leaq	L_.str.2(%rip), %rbx
	movl	$6, %esi
	movq	%rbx, %rdi
	callq	_zshow_bytes
	movl	$6, %esi
	movq	%rbx, %rdi
	callq	_zshow_bytes
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" %.2x"

L_.str.2:                               ## @.str.2
	.asciz	"abcdef"


.subsections_via_symbols

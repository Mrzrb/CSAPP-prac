	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_swap
	.p2align	4, 0x90
_swap:                                  ## @swap
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rdi)
	movq	%rax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols

	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_m12
	.p2align	4, 0x90
_m12:                                   ## @m12
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
	shlq	$2, %rdi
	leaq	(%rdi,%rdi,2), %rax
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols

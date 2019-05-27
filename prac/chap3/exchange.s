	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14
	.globl	_exchange               ## -- Begin function exchange
	.p2align	4, 0x90
_exchange:                              ## @exchange
	.cfi_startproc
## %bb.0:
	;//TODO
	pushq	%rbp	;暂时还不知道是干啥的 后续过来添加 
	; .cfi_def_cfa_offset 16
	; .cfi_offset %rbp, -16
	movq	%rsp, %rbp 
	; .cfi_def_cfa_register %rbp
	movq	(%rdi), %rax ;%rdi 里面放着第一个参数  mov到%rax上 %rax一般为返回值
	movq	%rsi, (%rdi) ;%rsi为第二个参数 通过间接寻址赋值给xp指的内容
	popq	%rbp ;返回x
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols

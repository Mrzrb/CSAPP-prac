
test:	file format Mach-O 64-bit x86-64

Disassembly of section __TEXT,__text:
__text:
100000f00:	55 	pushq	%rbp
100000f01:	48 89 e5 	movq	%rsp, %rbp
100000f04:	48 83 ec 10 	subq	$16, %rsp
100000f08:	48 8d 55 f8 	leaq	-8(%rbp), %rdx
100000f0c:	bf 02 00 00 00 	movl	$2, %edi
100000f11:	be 03 00 00 00 	movl	$3, %esi
100000f16:	e8 25 00 00 00 	callq	37 <_multstore>
100000f1b:	48 8b 75 f8 	movq	-8(%rbp), %rsi
100000f1f:	48 8d 3d 68 00 00 00 	leaq	104(%rip), %rdi
100000f26:	31 c0 	xorl	%eax, %eax
100000f28:	e8 3f 00 00 00 	callq	63
100000f2d:	31 c0 	xorl	%eax, %eax
100000f2f:	48 83 c4 10 	addq	$16, %rsp
100000f33:	5d 	popq	%rbp
100000f34:	c3 	retq
100000f35:	66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)
100000f40:	55 	pushq	%rbp
100000f41:	48 89 e5 	movq	%rsp, %rbp
100000f44:	53 	pushq	%rbx
100000f45:	50 	pushq	%rax
100000f46:	48 89 d3 	movq	%rdx, %rbx
100000f49:	e8 12 00 00 00 	callq	18 <_mult2>
100000f4e:	48 98 	cltq
100000f50:	48 89 03 	movq	%rax, (%rbx)
100000f53:	48 83 c4 08 	addq	$8, %rsp
100000f57:	5b 	popq	%rbx
100000f58:	5d 	popq	%rbp
100000f59:	c3 	retq
100000f5a:	66 0f 1f 44 00 00 	nopw	(%rax,%rax)
100000f60:	55 	pushq	%rbp
100000f61:	48 89 e5 	movq	%rsp, %rbp
100000f64:	0f af f7 	imull	%edi, %esi
100000f67:	89 f0 	movl	%esi, %eax
100000f69:	5d 	popq	%rbp
100000f6a:	c3 	retq

_main:
100000f00:	55 	pushq	%rbp
100000f01:	48 89 e5 	movq	%rsp, %rbp
100000f04:	48 83 ec 10 	subq	$16, %rsp
100000f08:	48 8d 55 f8 	leaq	-8(%rbp), %rdx
100000f0c:	bf 02 00 00 00 	movl	$2, %edi
100000f11:	be 03 00 00 00 	movl	$3, %esi
100000f16:	e8 25 00 00 00 	callq	37 <_multstore>
100000f1b:	48 8b 75 f8 	movq	-8(%rbp), %rsi
100000f1f:	48 8d 3d 68 00 00 00 	leaq	104(%rip), %rdi
100000f26:	31 c0 	xorl	%eax, %eax
100000f28:	e8 3f 00 00 00 	callq	63
100000f2d:	31 c0 	xorl	%eax, %eax
100000f2f:	48 83 c4 10 	addq	$16, %rsp
100000f33:	5d 	popq	%rbp
100000f34:	c3 	retq
100000f35:	66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

_multstore:
100000f40:	55 	pushq	%rbp
100000f41:	48 89 e5 	movq	%rsp, %rbp
100000f44:	53 	pushq	%rbx
100000f45:	50 	pushq	%rax
100000f46:	48 89 d3 	movq	%rdx, %rbx
100000f49:	e8 12 00 00 00 	callq	18 <_mult2>
100000f4e:	48 98 	cltq
100000f50:	48 89 03 	movq	%rax, (%rbx)
100000f53:	48 83 c4 08 	addq	$8, %rsp
100000f57:	5b 	popq	%rbx
100000f58:	5d 	popq	%rbp
100000f59:	c3 	retq
100000f5a:	66 0f 1f 44 00 00 	nopw	(%rax,%rax)

_mult2:
100000f60:	55 	pushq	%rbp
100000f61:	48 89 e5 	movq	%rsp, %rbp
100000f64:	0f af f7 	imull	%edi, %esi
100000f67:	89 f0 	movl	%esi, %eax
100000f69:	5d 	popq	%rbp
100000f6a:	c3 	retq
Disassembly of section __TEXT,__stubs:
__stubs:
100000f6c:	ff 25 9e 00 00 00 	jmpq	*158(%rip)
Disassembly of section __TEXT,__stub_helper:
__stub_helper:
100000f74:	4c 8d 1d 8d 00 00 00 	leaq	141(%rip), %r11
100000f7b:	41 53 	pushq	%r11
100000f7d:	ff 25 7d 00 00 00 	jmpq	*125(%rip)
100000f83:	90 	nop
100000f84:	68 00 00 00 00 	pushq	$0
100000f89:	e9 e6 ff ff ff 	jmp	-26 <__stub_helper>

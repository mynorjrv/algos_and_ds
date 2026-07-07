	.file	"0.1b-pointers_to_assembly.c"
	.text
	.globl	moving_pointers                 # -- Begin function moving_pointers
	.p2align	4
	.type	moving_pointers,@function
moving_pointers:                        # @moving_pointers
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$-43, -4(%rbp)
	movl	$19, -8(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$17, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	moving_pointers, .Lfunc_end0-moving_pointers
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 22.1.8 (Fedora 22.1.8-1.fc44)"
	.section	".note.GNU-stack","",@progbits
	.addrsig

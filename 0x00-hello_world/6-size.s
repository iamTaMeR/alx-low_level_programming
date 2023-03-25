	.text
	.file	"6-size.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0xcc
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	movq	__retguard_3976(%rip), %r11
	xorq	(%rsp), %r11
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r11
	pushq	%rax
	.cfi_offset %r11, -24
	movl	$0, -12(%rbp)
	leaq	.L.str(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$1, %esi
	callq	printf@PLT
	leaq	.L.str.1(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$4, %esi
	callq	printf@PLT
	leaq	.L.str.2(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$8, %esi
	callq	printf@PLT
	leaq	.L.str.3(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$8, %esi
	callq	printf@PLT
	leaq	.L.str.4(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$4, %esi
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%r11
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	xorq	(%rsp), %r11
	cmpq	__retguard_3976(%rip), %r11
	je	.Ltmp0
	int3
	int3
.Ltmp1:
	.zero	15-((.Ltmp1-main)&15),204
.Ltmp0:
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text.__llvm_retpoline_r11,"axG",@progbits,__llvm_retpoline_r11,comdat
	.hidden	__llvm_retpoline_r11            # -- Begin function __llvm_retpoline_r11
	.weak	__llvm_retpoline_r11
	.p2align	4, 0xcc
	.type	__llvm_retpoline_r11,@function
__llvm_retpoline_r11:                   # @__llvm_retpoline_r11
# %bb.0:
	callq	.Ltmp2
.LBB1_1:                                # Block address taken
                                        # =>This Inner Loop Header: Depth=1
	pause
	lfence
	jmp	.LBB1_1
	.p2align	4, 0xcc
# %bb.2:                                # Block address taken
.Ltmp2:
	movq	%r11, (%rsp)
	retq
	lfence
.Lfunc_end1:
	.size	__llvm_retpoline_r11, .Lfunc_end1-__llvm_retpoline_r11
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Size of a char: %d byte(s)\n"
	.size	.L.str, 28

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Size of an int: %d byte(s)\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Size of a long int: %d byte(s)\n"
	.size	.L.str.2, 32

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Size of a long long int: %d byte(s)\n"
	.size	.L.str.3, 37

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Size of a float: %d byte(s)\n"
	.size	.L.str.4, 29

	.hidden	__retguard_3976                 # @__retguard_3976
	.type	__retguard_3976,@object
	.section	.openbsd.randomdata.retguard.3976,"aGw",@progbits,__retguard_3976,comdat
	.weak	__retguard_3976
	.p2align	3
__retguard_3976:
	.quad	0
	.size	__retguard_3976, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf

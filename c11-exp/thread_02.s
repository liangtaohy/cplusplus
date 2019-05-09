	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$0, -4(%rbp)
	leaq	-8(%rbp), %rdi
	callq	__ZN7CounterC1Ev
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC1Ev
	movl	$0, -36(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$5, -36(%rbp)
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
Ltmp6:
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	__ZNSt3__16threadC1IZ4mainE3$_0JEvEEOT_DpOT0_
Ltmp7:
	jmp	LBB0_3
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
Ltmp9:
	leaq	-32(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9push_backEOS1_
Ltmp10:
	jmp	LBB0_4
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16threadD1Ev
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_6:
Ltmp8:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	jmp	LBB0_16
LBB0_7:
Ltmp11:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16threadD1Ev
	jmp	LBB0_16
LBB0_8:
	leaq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE5beginEv
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE3endEv
	movq	%rax, -96(%rbp)
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	leaq	-88(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	__ZNSt3__1neIPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_
	testb	$1, %al
	jne	LBB0_10
	jmp	LBB0_13
LBB0_10:                                ##   in Loop: Header=BB0_9 Depth=1
	leaq	-88(%rbp), %rdi
	callq	__ZNKSt3__111__wrap_iterIPNS_6threadEEdeEv
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
Ltmp4:
	callq	__ZNSt3__16thread4joinEv
Ltmp5:
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_9 Depth=1
	leaq	-88(%rbp), %rdi
	callq	__ZNSt3__111__wrap_iterIPNS_6threadEEppEv
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	jmp	LBB0_9
LBB0_13:
	movl	-8(%rbp), %esi
Ltmp0:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp1:
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	jmp	LBB0_14
LBB0_14:
Ltmp2:
	leaq	__ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rsi
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp3:
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	jmp	LBB0_15
LBB0_15:
	movl	$0, -4(%rbp)
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1Ev
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
LBB0_16:
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1Ev
## %bb.17:
	movq	-64(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0 ## >> Call Site 1 <<
	.uleb128 Ltmp6-Lfunc_begin0     ##   Call between Lfunc_begin0 and Ltmp6
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0     ## >> Call Site 2 <<
	.uleb128 Ltmp7-Ltmp6            ##   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0     ##     jumps to Ltmp8
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0     ## >> Call Site 3 <<
	.uleb128 Ltmp10-Ltmp9           ##   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0    ##     jumps to Ltmp11
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0     ## >> Call Site 4 <<
	.uleb128 Ltmp3-Ltmp4            ##   Call between Ltmp4 and Ltmp3
	.uleb128 Ltmp8-Lfunc_begin0     ##     jumps to Ltmp8
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0     ## >> Call Site 5 <<
	.uleb128 Lfunc_end0-Ltmp3       ##   Call between Ltmp3 and Lfunc_end0
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN7CounterC1Ev        ## -- Begin function _ZN7CounterC1Ev
	.weak_def_can_be_hidden	__ZN7CounterC1Ev
	.p2align	4, 0x90
__ZN7CounterC1Ev:                       ## @_ZN7CounterC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN7CounterC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC1Ev
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC1Ev: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9push_backEOS1_
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9push_backEOS1_: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE9push_backEOS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rsi, %rax
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE9__end_capEv
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	cmpq	(%rax), %rsi
	jae	LBB3_2
## %bb.1:
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotatorC1ERKS4_m
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	movq	%rdx, %rdi
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	movq	8(%rdx), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L16__to_raw_pointerINS_6threadEEEPT_S3_
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L4moveIRNS_6threadEEEONS_16remove_referenceIT_E4typeEOS4_
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotator6__doneEv
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rdx
	addq	$8, %rdx
	movq	%rdx, 8(%rax)
	jmp	LBB3_3
LBB3_2:
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_6threadEEEONS_16remove_referenceIT_E4typeEOS4_
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
LBB3_3:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16threadC1IZ4mainE3$_0JEvEEOT_DpOT0_
__ZNSt3__16threadC1IZ4mainE3$_0JEvEEOT_DpOT0_: ## @"_ZNSt3__16threadC1IZ4mainE3$_0JEvEEOT_DpOT0_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE5beginEv
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE5beginEv: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE5beginEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rsi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__make_iterEPS1_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE3endEv
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE3endEv: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE3endEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rsi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__make_iterEPS1_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1neIPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_
__ZNSt3__1neIPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_: ## @_ZNSt3__1neIPNS_6threadEEEbRKNS_11__wrap_iterIT_EES7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__1eqIPNS_6threadES2_EEbRKNS_11__wrap_iterIT_EERKNS3_IT0_EE
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__111__wrap_iterIPNS_6threadEEdeEv
__ZNKSt3__111__wrap_iterIPNS_6threadEEdeEv: ## @_ZNKSt3__111__wrap_iterIPNS_6threadEEdeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__111__wrap_iterIPNS_6threadEEppEv
__ZNSt3__111__wrap_iterIPNS_6threadEEppEv: ## @_ZNSt3__111__wrap_iterIPNS_6threadEEppEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	addq	$8, %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E: ## @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	*-16(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
__ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__1L4endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movl	$10, %esi
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movsbl	%al, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	-8(%rbp), %rcx
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1Ev ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1Ev
	.p2align	4, 0x90
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1Ev: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7CounterC2Ev        ## -- Begin function _ZN7CounterC2Ev
	.weak_def_can_be_hidden	__ZN7CounterC2Ev
	.p2align	4, 0x90
__ZN7CounterC2Ev:                       ## @_ZN7CounterC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2Ev ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2Ev
	.p2align	4, 0x90
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2Ev: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEED2Ev ## -- Begin function _ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEED2Ev
	.p2align	4, 0x90
__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEED2Ev: ## @_ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	je	LBB15_2
## %bb.1:
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE5clearEv
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	(%rdi), %rsi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE8capacityEv
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateERS3_PS2_m
LBB15_2:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE5clearEv
__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE5clearEv: ## @_ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rsi
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE17__destruct_at_endEPS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateERS3_PS2_m
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateERS3_PS2_m: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateERS3_PS2_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__19allocatorINS_6threadEE10deallocateEPS1_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv
__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv: ## @_ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE8capacityEv
__ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE8capacityEv: ## @_ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE9__end_capEv
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	(%rdi), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE17__destruct_at_endEPS1_
__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE17__destruct_at_endEPS1_: ## @_ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE17__destruct_at_endEPS1_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
LBB20_1:                                ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	LBB20_4
## %bb.2:                               ##   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv
	movq	-24(%rbp), %rdi
	addq	$-8, %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L16__to_raw_pointerINS_6threadEEEPT_S3_
Ltmp12:
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyIS2_EEvRS3_PT_
Ltmp13:
	jmp	LBB20_3
LBB20_3:                                ##   in Loop: Header=BB20_1 Depth=1
	jmp	LBB20_1
LBB20_4:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, 8(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
LBB20_5:
Ltmp14:
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table20:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp12-Lfunc_begin1    ## >> Call Site 1 <<
	.uleb128 Ltmp13-Ltmp12          ##   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin1    ##     jumps to Ltmp14
	.byte	1                       ##   On action: 1
Lcst_end1:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyIS2_EEvRS3_PT_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyIS2_EEvRS3_PT_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyIS2_EEvRS3_PT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9__destroyIS2_EEvNS_17integral_constantIbLb1EEERS3_PT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L16__to_raw_pointerINS_6threadEEEPT_S3_
__ZNSt3__1L16__to_raw_pointerINS_6threadEEEPT_S3_: ## @_ZNSt3__1L16__to_raw_pointerINS_6threadEEEPT_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	pushq	%rax
	callq	___cxa_begin_catch
	movq	%rax, (%rsp)            ## 8-byte Spill
	callq	__ZSt9terminatev
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9__destroyIS2_EEvNS_17integral_constantIbLb1EEERS3_PT_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9__destroyIS2_EEvNS_17integral_constantIbLb1EEERS3_PT_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9__destroyIS2_EEvNS_17integral_constantIbLb1EEERS3_PT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	__ZNSt3__19allocatorINS_6threadEE7destroyEPS1_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19allocatorINS_6threadEE7destroyEPS1_
__ZNSt3__19allocatorINS_6threadEE7destroyEPS1_: ## @_ZNSt3__19allocatorINS_6threadEE7destroyEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__16threadD1Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19allocatorINS_6threadEE10deallocateEPS1_m
__ZNSt3__19allocatorINS_6threadEE10deallocateEPS1_m: ## @_ZNSt3__19allocatorINS_6threadEE10deallocateEPS1_m
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
Ltmp15:
	movl	$8, %eax
	movl	%eax, %esi
	callq	__ZNSt3__1L19__libcpp_deallocateEPvm
Ltmp16:
	jmp	LBB26_1
LBB26_1:
	addq	$32, %rsp
	popq	%rbp
	retq
LBB26_2:
Ltmp17:
	movq	%rax, %rdi
	movq	%rdx, -32(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table26:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp15-Lfunc_begin2    ## >> Call Site 1 <<
	.uleb128 Ltmp16-Ltmp15          ##   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin2    ##     jumps to Ltmp17
	.byte	1                       ##   On action: 1
Lcst_end2:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L19__libcpp_deallocateEPvm
__ZNSt3__1L19__libcpp_deallocateEPvm:   ## @_ZNSt3__1L19__libcpp_deallocateEPvm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZdlPv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondEv
__ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondEv: ## @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE9__end_capEv
__ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE9__end_capEv: ## @_ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	callq	__ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstEv
__ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC2Ev
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC2Ev: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEEC2Ev
__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEEC2Ev: ## @_ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEEC2Ev
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
Ltmp18:
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__120__vector_base_commonILb1EEC2Ev
Ltmp19:
	jmp	LBB34_1
LBB34_1:
	movq	-24(%rbp), %rax         ## 8-byte Reload
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	addq	$16, %rax
	movq	$0, -16(%rbp)
Ltmp20:
	leaq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC1IDnLb1EEEOT_
Ltmp21:
	jmp	LBB34_2
LBB34_2:
	addq	$32, %rsp
	popq	%rbp
	retq
LBB34_3:
Ltmp22:
	movq	%rax, %rdi
	movq	%rdx, -32(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table34:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp18-Lfunc_begin3    ## >> Call Site 1 <<
	.uleb128 Ltmp21-Ltmp18          ##   Call between Ltmp18 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin3    ##     jumps to Ltmp22
	.byte	1                       ##   On action: 1
Lcst_end3:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase2:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__120__vector_base_commonILb1EEC2Ev
__ZNSt3__120__vector_base_commonILb1EEC2Ev: ## @_ZNSt3__120__vector_base_commonILb1EEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC1IDnLb1EEEOT_
__ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC1IDnLb1EEEOT_: ## @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC1IDnLb1EEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC2IDnLb1EEEOT_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC2IDnLb1EEEOT_
__ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC2IDnLb1EEEOT_: ## @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEEC2IDnLb1EEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2IDnvEEOT_
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EEC2Ev
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE
__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE: ## @_ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2IDnvEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2IDnvEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2IDnvEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	$0, (%rsi)
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EEC2Ev
__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EEC2Ev: ## @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__19allocatorINS_6threadEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19allocatorINS_6threadEEC2Ev
__ZNSt3__19allocatorINS_6threadEEC2Ev:  ## @_ZNSt3__19allocatorINS_6threadEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_
__ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_: ## @"_ZNSt3__16threadC2IZ4mainE3$_0JEvEEOT_DpOT0_"
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$8, %eax
	movl	%eax, %esi
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	callq	__Znwm
	movq	%rax, %rsi
	movq	%rax, %rdi
Ltmp23:
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__115__thread_structC1Ev
Ltmp24:
	jmp	LBB42_1
LBB42_1:
	leaq	-24(%rbp), %rdi
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_
Ltmp26:
	movl	$16, %eax
	movl	%eax, %edi
	callq	__Znwm
Ltmp27:
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	jmp	LBB42_2
LBB42_2:
	movq	-96(%rbp), %rax         ## 8-byte Reload
	leaq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIZ4mainE3$_0EEOT_RNS_16remove_referenceIS2_E4typeE
Ltmp29:
	movq	%rax, %rdi
	callq	__ZNSt3__1L12__decay_copyIZ4mainE3$_0EENS_5decayIT_E4typeEOS3_
Ltmp30:
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	jmp	LBB42_3
LBB42_3:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	movq	-112(%rbp), %rsi        ## 8-byte Reload
	callq	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC1IJS5_S6_ELb0ELb0EEEDpOT_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	-104(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, -128(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC1ILb1EvEEPS7_
	movq	-128(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE3getEv
Ltmp32:
	leaq	__ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEPvS9_(%rip), %rsi
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_
Ltmp33:
	movl	%eax, -132(%rbp)        ## 4-byte Spill
	jmp	LBB42_4
LBB42_4:
	movl	-132(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	LBB42_10
## %bb.5:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE7releaseEv
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	jmp	LBB42_12
LBB42_6:
Ltmp25:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	jmp	LBB42_14
LBB42_7:
Ltmp28:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	jmp	LBB42_13
LBB42_8:
Ltmp31:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
	jmp	LBB42_13
LBB42_9:
Ltmp36:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1Ev
	jmp	LBB42_13
LBB42_10:
	movl	-60(%rbp), %edi
Ltmp34:
	leaq	L_.str(%rip), %rsi
	callq	__ZNSt3__120__throw_system_errorEiPKc
Ltmp35:
	jmp	LBB42_11
LBB42_11:
	ud2
LBB42_12:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1Ev
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
	addq	$144, %rsp
	popq	%rbp
	retq
LBB42_13:
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
LBB42_14:
	movq	-32(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table42:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4 ## >> Call Site 1 <<
	.uleb128 Ltmp23-Lfunc_begin4    ##   Call between Lfunc_begin4 and Ltmp23
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp23-Lfunc_begin4    ## >> Call Site 2 <<
	.uleb128 Ltmp24-Ltmp23          ##   Call between Ltmp23 and Ltmp24
	.uleb128 Ltmp25-Lfunc_begin4    ##     jumps to Ltmp25
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin4    ## >> Call Site 3 <<
	.uleb128 Ltmp27-Ltmp26          ##   Call between Ltmp26 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin4    ##     jumps to Ltmp28
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin4    ## >> Call Site 4 <<
	.uleb128 Ltmp30-Ltmp29          ##   Call between Ltmp29 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin4    ##     jumps to Ltmp31
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin4    ## >> Call Site 5 <<
	.uleb128 Ltmp35-Ltmp32          ##   Call between Ltmp32 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin4    ##     jumps to Ltmp36
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin4    ## >> Call Site 6 <<
	.uleb128 Lfunc_end4-Ltmp35      ##   Call between Ltmp35 and Lfunc_end4
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1ILb1EvEEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_
__ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_: ## @_ZNSt3__1L4moveIRNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEONS_16remove_referenceIT_E4typeEOS8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L12__decay_copyIZ4mainE3$_0EENS_5decayIT_E4typeEOS3_
__ZNSt3__1L12__decay_copyIZ4mainE3$_0EENS_5decayIT_E4typeEOS3_: ## @"_ZNSt3__1L12__decay_copyIZ4mainE3$_0EENS_5decayIT_E4typeEOS3_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIZ4mainE3$_0EEOT_RNS_16remove_referenceIS2_E4typeE
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIZ4mainE3$_0EEOT_RNS_16remove_referenceIS2_E4typeE
__ZNSt3__1L7forwardIZ4mainE3$_0EEOT_RNS_16remove_referenceIS2_E4typeE: ## @"_ZNSt3__1L7forwardIZ4mainE3$_0EEOT_RNS_16remove_referenceIS2_E4typeE"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC1IJS5_S6_ELb0ELb0EEEDpOT_
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC1IJS5_S6_ELb0ELb0EEEDpOT_: ## @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC1IJS5_S6_ELb0ELb0EEEDpOT_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC2IJS5_S6_ELb0ELb0EEEDpOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC1ILb1EvEEPS7_
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC1ILb1EvEEPS7_: ## @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC1ILb1EvEEPS7_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC2ILb1EvEEPS7_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_
__ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_: ## @_ZNSt3__1L22__libcpp_thread_createEPP17_opaque_pthread_tPFPvS3_ES3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	movq	%rcx, %rsi
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	callq	_pthread_create
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEPvS9_
__ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEPvS9_: ## @"_ZNSt3__114__thread_proxyINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEPvS9_"
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC1ILb1EvEEPS7_
Ltmp37:
	callq	__ZNSt3__119__thread_local_dataEv
Ltmp38:
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	jmp	LBB50_1
LBB50_1:
Ltmp39:
	leaq	-16(%rbp), %rdi
	callq	__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEdeEv
Ltmp40:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	jmp	LBB50_2
LBB50_2:
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_
	movq	%rax, %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
Ltmp41:
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
Ltmp42:
	jmp	LBB50_3
LBB50_3:
Ltmp43:
	leaq	-16(%rbp), %rdi
	callq	__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEdeEv
Ltmp44:
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	jmp	LBB50_4
LBB50_4:
Ltmp45:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0JEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE
Ltmp46:
	jmp	LBB50_5
LBB50_5:
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1Ev
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB50_6:
Ltmp47:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	leaq	-16(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1Ev
## %bb.7:
	movq	-24(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table50:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp37-Lfunc_begin5    ## >> Call Site 1 <<
	.uleb128 Ltmp46-Ltmp37          ##   Call between Ltmp37 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin5    ##     jumps to Ltmp47
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin5    ## >> Call Site 2 <<
	.uleb128 Lfunc_end5-Ltmp46      ##   Call between Ltmp46 and Lfunc_end5
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end5:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE3getEv
__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE3getEv: ## @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE3getEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE7releaseEv
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE7releaseEv: ## @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE7releaseEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1Ev
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1Ev: ## @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED1Ev"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2ILb1EvEEPS1_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
Ltmp48:
	leaq	-16(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_Lb1EEEOT_
Ltmp49:
	jmp	LBB55_1
LBB55_1:
	addq	$32, %rsp
	popq	%rbp
	retq
LBB55_2:
Ltmp50:
	movq	%rax, %rdi
	movq	%rdx, -24(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table55:
Lexception6:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Ltmp48-Lfunc_begin6    ## >> Call Site 1 <<
	.uleb128 Ltmp49-Ltmp48          ##   Call between Ltmp48 and Ltmp49
	.uleb128 Ltmp50-Lfunc_begin6    ##     jumps to Ltmp50
	.byte	1                       ##   On action: 1
Lcst_end6:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase3:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_Lb1EEEOT_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_Lb1EEEOT_: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IRS2_Lb1EEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_Lb1EEEOT_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_Lb1EEEOT_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_Lb1EEEOT_: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IRS2_Lb1EEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE: ## @_ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IRS2_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIRPNS_15__thread_structEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC2IJS5_S6_ELb0ELb0EEEDpOT_
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC2IJS5_S6_ELb0ELb0EEEDpOT_: ## @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEC2IJS5_S6_ELb0ELb0EEEDpOT_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	callq	__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIZ4mainE3$_0EEOT_RNS_16remove_referenceIS2_E4typeE
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	movq	-72(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC1IJLm0ELm1EEJS7_S8_EJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE: ## @_ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC1IJLm0ELm1EEJS7_S8_EJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC1IJLm0ELm1EEJS7_S8_EJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_: ## @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC1IJLm0ELm1EEJS7_S8_EJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC2IJLm0ELm1EEJS7_S8_EJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC2IJLm0ELm1EEJS7_S8_EJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC2IJLm0ELm1EEJS7_S8_EJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_: ## @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EEC2IJLm0ELm1EEJS7_S8_EJEJEJS7_S8_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSC_IJDpT2_EEEDpOT3_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdi
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
	movq	%rsi, -72(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_
	movq	-64(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIZ4mainE3$_0EEOT_RNS_16remove_referenceIS2_E4typeE
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EEC2IS1_vEEOT_
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_
__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_: ## @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EEC2IS5_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	callq	__ZNSt3__1L7forwardINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEEEOT_RNS_16remove_referenceIS6_E4typeE
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EEC2IS1_vEEOT_
__ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EEC2IS1_vEEOT_: ## @"_ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EEC2IS1_vEEOT_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIZ4mainE3$_0EEOT_RNS_16remove_referenceIS2_E4typeE
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC1EOS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEEC2EOS4_
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv
	movq	%rax, %rdi
	callq	__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
Ltmp51:
	leaq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_
Ltmp52:
	jmp	LBB67_1
LBB67_1:
	addq	$48, %rsp
	popq	%rbp
	retq
LBB67_2:
Ltmp53:
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table67:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp51-Lfunc_begin7    ## >> Call Site 1 <<
	.uleb128 Ltmp52-Ltmp51          ##   Call between Ltmp51 and Ltmp52
	.uleb128 Ltmp53-Lfunc_begin7    ##     jumps to Ltmp53
	.byte	1                       ##   On action: 1
Lcst_end7:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase4:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE7releaseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE: ## @_ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE11get_deleterEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC1IS2_S4_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEEC2IS2_S4_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdx, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
__ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE: ## @_ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPNS_15__thread_structELi0ELb0EEC2IS2_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIPNS_15__thread_structEEEOT_RNS_16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_15__thread_structEEELi1ELb1EEC2IS3_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L7forwardINS_14default_deleteINS_15__thread_structEEEEEOT_RNS_16remove_referenceIS4_E4typeE
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC2ILb1EvEEPS7_
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC2ILb1EvEEPS7_: ## @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEC2ILb1EvEEPS7_"
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
Ltmp54:
	leaq	-16(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC1IRS9_Lb1EEEOT_
Ltmp55:
	jmp	LBB80_1
LBB80_1:
	addq	$32, %rsp
	popq	%rbp
	retq
LBB80_2:
Ltmp56:
	movq	%rax, %rdi
	movq	%rdx, -24(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table80:
Lexception8:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp54-Lfunc_begin8    ## >> Call Site 1 <<
	.uleb128 Ltmp55-Ltmp54          ##   Call between Ltmp54 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin8    ##     jumps to Ltmp56
	.byte	1                       ##   On action: 1
Lcst_end8:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase5:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC1IRS9_Lb1EEEOT_
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC1IRS9_Lb1EEEOT_: ## @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC1IRS9_Lb1EEEOT_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC2IRS9_Lb1EEEOT_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC2IRS9_Lb1EEEOT_
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC2IRS9_Lb1EEEOT_: ## @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEEC2IRS9_Lb1EEEOT_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEOT_RNS_16remove_referenceISB_E4typeE
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EEC2IRS9_vEEOT_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEOT_RNS_16remove_referenceISB_E4typeE
__ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEOT_RNS_16remove_referenceISB_E4typeE: ## @"_ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEOT_RNS_16remove_referenceISB_E4typeE"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EEC2IRS9_vEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EEC2IRS9_vEEOT_: ## @"_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EEC2IRS9_vEEOT_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIRPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEEEEOT_RNS_16remove_referenceISB_E4typeE
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_ ## -- Begin function _ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
	.weak_definition	__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
	.p2align	4, 0x90
__ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_: ## @_ZNSt3__121__thread_specific_ptrINS_15__thread_structEE11set_pointerEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__1L16__libcpp_tls_setEmPv
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_
__ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_: ## @"_ZNSt3__1L3getILm0EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEdeEv
__ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEdeEv: ## @"_ZNKSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEEdeEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0JEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE
__ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0JEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE: ## @"_ZNSt3__1L16__thread_executeINS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0JEJEEEvRNS_5tupleIJT_T0_DpT1_EEENS_15__tuple_indicesIJXspT2_EEEE"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_
	movq	%rax, %rdi
	callq	__ZNSt3__1L4moveIRZ4mainE3$_0EEONS_16remove_referenceIT_E4typeEOS4_
	movq	%rax, %rdi
	callq	__ZNSt3__1L8__invokeIZ4mainE3$_0JEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS2_DpOS3_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L16__libcpp_tls_setEmPv
__ZNSt3__1L16__libcpp_tls_setEmPv:      ## @_ZNSt3__1L16__libcpp_tls_setEmPv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_pthread_setspecific
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv
__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv: ## @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EE3getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv
__ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv: ## @"_ZNKSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getEv: ## @"_ZNKSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L8__invokeIZ4mainE3$_0JEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS2_DpOS3_
__ZNSt3__1L8__invokeIZ4mainE3$_0JEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS2_DpOS3_: ## @"_ZNSt3__1L8__invokeIZ4mainE3$_0JEEEDTclclsr3std3__1E7forwardIT_Efp_Espclsr3std3__1E7forwardIT0_Efp0_EEEOS2_DpOS3_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L7forwardIZ4mainE3$_0EEOT_RNS_16remove_referenceIS2_E4typeE
	movq	%rax, %rdi
	callq	__ZZ4mainENK3$_0clEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4moveIRZ4mainE3$_0EEONS_16remove_referenceIT_E4typeEOS4_
__ZNSt3__1L4moveIRZ4mainE3$_0EEONS_16remove_referenceIT_E4typeEOS4_: ## @"_ZNSt3__1L4moveIRZ4mainE3$_0EEONS_16remove_referenceIT_E4typeEOS4_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_
__ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_: ## @"_ZNSt3__1L3getILm1EJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSB_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	__ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EE3getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZZ4mainENK3$_0clEv
__ZZ4mainENK3$_0clEv:                   ## @"_ZZ4mainENK3$_0clEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, -12(%rbp)
	movq	%rdi, -24(%rbp)         ## 8-byte Spill
LBB96_1:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$100, -12(%rbp)
	jge	LBB96_4
## %bb.2:                               ##   in Loop: Header=BB96_1 Depth=1
	movq	-24(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rdi
	callq	__ZN7Counter9incrementEv
## %bb.3:                               ##   in Loop: Header=BB96_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB96_1
LBB96_4:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN7Counter9incrementEv ## -- Begin function _ZN7Counter9incrementEv
	.weak_definition	__ZN7Counter9incrementEv
	.p2align	4, 0x90
__ZN7Counter9incrementEv:               ## @_ZN7Counter9incrementEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	addl	$1, %eax
	movl	%eax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EE3getEv
__ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EE3getEv: ## @"_ZNSt3__112__tuple_leafILm1EZ4mainE3$_0Lb0EE3getEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv: ## @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getEv: ## @"_ZNSt3__122__compressed_pair_elemIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEELi0ELb0EE5__getEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED2Ev
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED2Ev: ## @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEED2Ev"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE5resetEPS7_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE5resetEPS7_
__ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE5resetEPS7_: ## @"_ZNSt3__110unique_ptrINS_5tupleIJNS0_INS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EEENS3_IS7_EEE5resetEPS7_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE5firstEv
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	movq	%rsi, (%rax)
	cmpq	$0, -24(%rbp)
	je	LBB102_2
## %bb.1:
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE6secondEv
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZ4mainE3$_0EEEEclEPS7_
LBB102_2:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE6secondEv
__ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE6secondEv: ## @"_ZNSt3__117__compressed_pairIPNS_5tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS3_EEEEZ4mainE3$_0EEENS4_IS8_EEE6secondEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZ4mainE3$_0EEEEELi1ELb1EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZ4mainE3$_0EEEEclEPS7_
__ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZ4mainE3$_0EEEEclEPS7_: ## @"_ZNKSt3__114default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS0_IS3_EEEEZ4mainE3$_0EEEEclEPS7_"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	je	LBB104_2
## %bb.1:
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED1Ev
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
LBB104_2:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZ4mainE3$_0EEEEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZ4mainE3$_0EEEEELi1ELb1EE5__getEv: ## @"_ZNSt3__122__compressed_pair_elemINS_14default_deleteINS_5tupleIJNS_10unique_ptrINS_15__thread_structENS1_IS4_EEEEZ4mainE3$_0EEEEELi1ELb1EE5__getEv"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED1Ev
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED1Ev: ## @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED1Ev"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED2Ev
__ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED2Ev: ## @"_ZNSt3__15tupleIJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEEZ4mainE3$_0EED2Ev"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED1Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED1Ev
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED1Ev: ## @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED1Ev"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED2Ev
__ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED2Ev: ## @"_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1EEEEJNS_10unique_ptrINS_15__thread_structENS_14default_deleteIS4_EEEEZ4mainE3$_0EED2Ev"
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev ## -- Begin function _ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	.weak_def_can_be_hidden	__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	.p2align	4, 0x90
__ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev: ## @_ZNSt3__112__tuple_leafILm0ENS_10unique_ptrINS_15__thread_structENS_14default_deleteIS2_EEEELb0EED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED1Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_
__ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_: ## @_ZNSt3__110unique_ptrINS_15__thread_structENS_14default_deleteIS1_EEE5resetEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE5firstEv
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	movq	%rsi, (%rax)
	cmpq	$0, -24(%rbp)
	je	LBB112_2
## %bb.1:
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__117__compressed_pairIPNS_15__thread_structENS_14default_deleteIS1_EEE6secondEv
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_
LBB112_2:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_
__ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_: ## @_ZNKSt3__114default_deleteINS_15__thread_structEEclEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	je	LBB113_2
## %bb.1:
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__115__thread_structD1Ev
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdlPv
LBB113_2:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE9__end_capEv
__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE9__end_capEv: ## @_ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotatorC1ERKS4_m
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotatorC1ERKS4_m: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotatorC1ERKS4_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotatorC2ERKS4_m
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardINS_6threadEEEOT_RNS_16remove_referenceIS2_E4typeE
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE11__constructIS2_JS2_EEEvNS_17integral_constantIbLb1EEERS3_PT_DpOT0_
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4moveIRNS_6threadEEEONS_16remove_referenceIT_E4typeEOS4_
__ZNSt3__1L4moveIRNS_6threadEEEONS_16remove_referenceIT_E4typeEOS4_: ## @_ZNSt3__1L4moveIRNS_6threadEEEONS_16remove_referenceIT_E4typeEOS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotator6__doneEv
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotator6__doneEv: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotator6__doneEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_ ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
	.weak_definition	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
	.p2align	4, 0x90
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEvOT_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeEv
	incq	%rax
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendEm
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeEv
	movq	-24(%rbp), %rcx
	leaq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZNSt3__1L16__to_raw_pointerINS_6threadEEEPT_S3_
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__1L7forwardINS_6threadEEEOT_RNS_16remove_referenceIS2_E4typeE
Ltmp57:
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	movq	-112(%rbp), %rsi        ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
Ltmp58:
	jmp	LBB119_1
LBB119_1:
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
Ltmp59:
	leaq	-64(%rbp), %rsi
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
Ltmp60:
	jmp	LBB119_2
LBB119_2:
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev
	addq	$112, %rsp
	popq	%rbp
	retq
LBB119_3:
Ltmp61:
	movl	%edx, %ecx
	movq	%rax, -72(%rbp)
	movl	%ecx, -76(%rbp)
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev
## %bb.4:
	movq	-72(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table119:
Lexception9:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9 ## >> Call Site 1 <<
	.uleb128 Ltmp57-Lfunc_begin9    ##   Call between Lfunc_begin9 and Ltmp57
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin9    ## >> Call Site 2 <<
	.uleb128 Ltmp60-Ltmp57          ##   Call between Ltmp57 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin9    ##     jumps to Ltmp61
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin9    ## >> Call Site 3 <<
	.uleb128 Lfunc_end9-Ltmp60      ##   Call between Ltmp60 and Lfunc_end9
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end9:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstEv
__ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstEv: ## @_ZNSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotatorC2ERKS4_m
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotatorC2ERKS4_m: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE24__RAII_IncreaseAnnotatorC2ERKS4_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE11__constructIS2_JS2_EEEvNS_17integral_constantIbLb1EEERS3_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE11__constructIS2_JS2_EEEvNS_17integral_constantIbLb1EEERS3_PT_DpOT0_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE11__constructIS2_JS2_EEEvNS_17integral_constantIbLb1EEERS3_PT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardINS_6threadEEEOT_RNS_16remove_referenceIS2_E4typeE
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__19allocatorINS_6threadEE9constructIS1_JS1_EEEvPT_DpOT0_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardINS_6threadEEEOT_RNS_16remove_referenceIS2_E4typeE
__ZNSt3__1L7forwardINS_6threadEEEOT_RNS_16remove_referenceIS2_E4typeE: ## @_ZNSt3__1L7forwardINS_6threadEEEOT_RNS_16remove_referenceIS2_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19allocatorINS_6threadEE9constructIS1_JS1_EEEvPT_DpOT0_
__ZNSt3__19allocatorINS_6threadEE9constructIS1_JS1_EEEvPT_DpOT0_: ## @_ZNSt3__19allocatorINS_6threadEE9constructIS1_JS1_EEEvPT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdx, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardINS_6threadEEEOT_RNS_16remove_referenceIS2_E4typeE
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__16threadC1EOS0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16threadC1EOS0_
__ZNSt3__16threadC1EOS0_:               ## @_ZNSt3__16threadC1EOS0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__16threadC2EOS0_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16threadC2EOS0_
__ZNSt3__16threadC2EOS0_:               ## @_ZNSt3__16threadC2EOS0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rsi)
	movq	-16(%rbp), %rsi
	movq	$0, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendEm
__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendEm: ## @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__recommendEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	LBB128_2
## %bb.1:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
LBB128_2:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityEv
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	shrq	$1, %rdi
	cmpq	%rdi, %rax
	jb	LBB128_4
## %bb.3:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB128_5
LBB128_4:
	movq	-40(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	__ZNSt3__1L3maxImEERKT_S3_S3_
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
LBB128_5:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeEv
__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeEv: ## @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	subq	%rdi, %rax
	sarq	$3, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_ ## -- Begin function _ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_: ## @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC1EmmS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC2EmmS4_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
	.weak_definition	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
	.p2align	4, 0x90
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE17__annotate_deleteEv
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rsi, %rdi
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	(%rsi), %rsi
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	8(%rdi), %rdx
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rax, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE20__construct_backwardIPS2_EEvRS3_T_S8_RS8_
	movq	-24(%rbp), %rax         ## 8-byte Reload
	movq	-16(%rbp), %rcx
	addq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSt3__1L4swapIPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	movq	-24(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	-16(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSt3__1L4swapIPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	movq	-24(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZNSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE9__end_capEv
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capEv
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__1L4swapIPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeEv
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE14__annotate_newEm
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__invalidate_all_iteratorsEv
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev ## -- Begin function _ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev
	.p2align	4, 0x90
__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev: ## @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv ## -- Begin function _ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv
	.weak_definition	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv
	.p2align	4, 0x90
__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv: ## @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8max_sizeEv
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv
	movq	%rax, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8max_sizeERKS3_
	movq	%rax, -16(%rbp)
	callq	__ZNSt3__114numeric_limitsIlE3maxEv
	movq	%rax, -24(%rbp)
Ltmp62:
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	__ZNSt3__1L3minImEERKT_S3_S3_
Ltmp63:
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	jmp	LBB133_1
LBB133_1:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	(%rax), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
LBB133_2:
Ltmp64:
	movq	%rax, %rdi
	movq	%rdx, -40(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table133:
Lexception10:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp62-Lfunc_begin10   ## >> Call Site 1 <<
	.uleb128 Ltmp63-Ltmp62          ##   Call between Ltmp62 and Ltmp63
	.uleb128 Ltmp64-Lfunc_begin10   ##     jumps to Ltmp64
	.byte	1                       ##   On action: 1
Lcst_end10:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase6:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityEv
__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityEv: ## @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE8capacityEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L3maxImEERKT_S3_S3_
__ZNSt3__1L3maxImEERKT_S3_S3_:          ## @_ZNSt3__1L3maxImEERKT_S3_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L3minImEERKT_S3_S3_
__ZNSt3__1L3minImEERKT_S3_S3_:          ## @_ZNSt3__1L3minImEERKT_S3_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8max_sizeERKS3_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8max_sizeERKS3_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8max_sizeERKS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS3_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv
__ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv: ## @_ZNKSt3__113__vector_baseINS_6threadENS_9allocatorIS1_EEE7__allocEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$16, %rdi
	callq	__ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114numeric_limitsIlE3maxEv
__ZNSt3__114numeric_limitsIlE3maxEv:    ## @_ZNSt3__114numeric_limitsIlE3maxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_
__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_: ## @_ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	leaq	-8(%rbp), %rdi
	callq	__ZNKSt3__16__lessImmEclERKmS3_
	testb	$1, %al
	jne	LBB140_1
	jmp	LBB140_2
LBB140_1:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	jmp	LBB140_3
LBB140_2:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         ## 8-byte Spill
LBB140_3:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16__lessImmEclERKmS3_
__ZNKSt3__16__lessImmEclERKmS3_:        ## @_ZNKSt3__16__lessImmEclERKmS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rsi
	cmpq	(%rsi), %rdx
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS3_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS3_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNKSt3__19allocatorINS_6threadEE8max_sizeEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19allocatorINS_6threadEE8max_sizeEv
__ZNKSt3__19allocatorINS_6threadEE8max_sizeEv: ## @_ZNKSt3__19allocatorINS_6threadEE8max_sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax ## imm = 0x1FFFFFFFFFFFFFFF
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondEv
__ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondEv: ## @_ZNKSt3__117__compressed_pairIPNS_6threadENS_9allocatorIS1_EEE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getEv
__ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_6threadEEELi1ELb1EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv: ## @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$9223372036854775807, %rax ## imm = 0x7FFFFFFFFFFFFFFF
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_
__ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_: ## @_ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	leaq	-8(%rbp), %rdi
	callq	__ZNKSt3__16__lessImmEclERKmS3_
	testb	$1, %al
	jne	LBB147_1
	jmp	LBB147_2
LBB147_1:
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	jmp	LBB147_3
LBB147_2:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         ## 8-byte Spill
LBB147_3:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC2EmmS4_ ## -- Begin function _ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC2EmmS4_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC2EmmS4_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC2EmmS4_: ## @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEEC2EmmS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$24, %rdx
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rdx, %rdi
	leaq	-40(%rbp), %rdx
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%rdx, %rsi
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC1IDnS5_EEOT_OT0_
	cmpq	$0, -16(%rbp)
	je	LBB148_2
## %bb.1:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocEv
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8allocateERS3_m
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	jmp	LBB148_3
LBB148_2:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	jmp	LBB148_3
LBB148_3:
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rcx), %rax
	movq	-24(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, 16(%rcx)
	movq	%rax, 8(%rcx)
	movq	(%rcx), %rax
	movq	-16(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rax
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capEv
	movq	-72(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, (%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC1IDnS5_EEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC1IDnS5_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC1IDnS5_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC2IDnS5_EEOT_OT0_
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8allocateERS3_m
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8allocateERS3_m: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE8allocateERS3_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__19allocatorINS_6threadEE8allocateEmPKv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocEv
__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocEv: ## @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$24, %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE6secondEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capEv
__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capEv: ## @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$24, %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC2IDnS5_EEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC2IDnS5_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEEC2IDnS5_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdx, -32(%rbp)         ## 8-byte Spill
	movq	%rsi, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EEC2IDnvEEOT_
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIRNS_9allocatorINS_6threadEEEEEOT_RNS_16remove_referenceIS5_E4typeE
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EEC2IS4_vEEOT_
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L7forwardIRNS_9allocatorINS_6threadEEEEEOT_RNS_16remove_referenceIS5_E4typeE
__ZNSt3__1L7forwardIRNS_9allocatorINS_6threadEEEEEOT_RNS_16remove_referenceIS5_E4typeE: ## @_ZNSt3__1L7forwardIRNS_9allocatorINS_6threadEEEEEOT_RNS_16remove_referenceIS5_E4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EEC2IS4_vEEOT_
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EEC2IS4_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EEC2IS4_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L7forwardIRNS_9allocatorINS_6threadEEEEEOT_RNS_16remove_referenceIS5_E4typeE
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__19allocatorINS_6threadEE8allocateEmPKv
__ZNSt3__19allocatorINS_6threadEE8allocateEmPKv: ## @_ZNSt3__19allocatorINS_6threadEE8allocateEmPKv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__19allocatorINS_6threadEE8max_sizeEv
	movq	-32(%rbp), %rdx         ## 8-byte Reload
	cmpq	%rax, %rdx
	jbe	LBB156_2
## %bb.1:
	leaq	L_.str.1(%rip), %rdi
	callq	__ZNSt3__1L20__throw_length_errorEPKc
LBB156_2:
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	__ZNSt3__1L17__libcpp_allocateEmm
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L20__throw_length_errorEPKc
__ZNSt3__1L20__throw_length_errorEPKc:  ## @_ZNSt3__1L20__throw_length_errorEPKc
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$16, %eax
	movl	%eax, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
Ltmp65:
	movq	%rdi, -32(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZNSt12length_errorC1EPKc
Ltmp66:
	jmp	LBB157_1
LBB157_1:
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	___cxa_throw
LBB157_2:
Ltmp67:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	___cxa_free_exception
## %bb.3:
	movq	-16(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table157:
Lexception11:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11 ## >> Call Site 1 <<
	.uleb128 Ltmp65-Lfunc_begin11   ##   Call between Lfunc_begin11 and Ltmp65
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp65-Lfunc_begin11   ## >> Call Site 2 <<
	.uleb128 Ltmp66-Ltmp65          ##   Call between Ltmp65 and Ltmp66
	.uleb128 Ltmp67-Lfunc_begin11   ##     jumps to Ltmp67
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp66-Lfunc_begin11   ## >> Call Site 3 <<
	.uleb128 Lfunc_end11-Ltmp66     ##   Call between Ltmp66 and Lfunc_end11
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end11:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L17__libcpp_allocateEmm
__ZNSt3__1L17__libcpp_allocateEmm:      ## @_ZNSt3__1L17__libcpp_allocateEmm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	__Znwm
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt12length_errorC1EPKc
__ZNSt12length_errorC1EPKc:             ## @_ZNSt12length_errorC1EPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt12length_errorC2EPKc
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt12length_errorC2EPKc
__ZNSt12length_errorC2EPKc:             ## @_ZNSt12length_errorC2EPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	movq	%rax, %rsi
	callq	__ZNSt11logic_errorC2EPKc
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE6secondEv
__ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE6secondEv: ## @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	callq	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_6threadEEELi1ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstEv
__ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstEv: ## @_ZNSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE17__annotate_deleteEv
__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE17__annotate_deleteEv: ## @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE17__annotate_deleteEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityEv
	shlq	$3, %rax
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	addq	%rax, %rdi
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4sizeEv
	shlq	$3, %rax
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	addq	%rax, %rdi
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityEv
	shlq	$3, %rax
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	addq	%rax, %rdi
	movq	-16(%rbp), %rax         ## 8-byte Reload
	movq	%rdi, -72(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movq	-72(%rbp), %r8          ## 8-byte Reload
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerEPKvS6_S6_S6_
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE20__construct_backwardIPS2_EEvRS3_T_S8_RS8_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE20__construct_backwardIPS2_EEvRS3_T_S8_RS8_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE20__construct_backwardIPS2_EEvRS3_T_S8_RS8_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
LBB165_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	LBB165_3
## %bb.2:                               ##   in Loop: Header=BB165_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$-8, %rax
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZNSt3__1L16__to_raw_pointerINS_6threadEEEPT_S3_
	movq	-24(%rbp), %rdi
	addq	$-8, %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L16move_if_noexceptINS_6threadEEENS_11conditionalIXaantsr29is_nothrow_move_constructibleIT_EE5valuesr21is_copy_constructibleIS3_EE5valueERKS3_OS3_E4typeERS3_
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, %rdx
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	addq	$-8, %rdx
	movq	%rdx, (%rax)
	jmp	LBB165_1
LBB165_3:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4swapIPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
__ZNSt3__1L4swapIPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_: ## @_ZNSt3__1L4swapIPNS_6threadEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRPNS_6threadEEEONS_16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRPNS_6threadEEEONS_16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRPNS_6threadEEEONS_16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE14__annotate_newEm
__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE14__annotate_newEm: ## @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE14__annotate_newEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -24(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityEv
	shlq	$3, %rax
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	addq	%rax, %rsi
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE8capacityEv
	shlq	$3, %rax
	movq	-56(%rbp), %rsi         ## 8-byte Reload
	addq	%rax, %rsi
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv
	movq	-16(%rbp), %rsi
	shlq	$3, %rsi
	addq	%rsi, %rax
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	-48(%rbp), %rdx         ## 8-byte Reload
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movq	%rax, %r8
	callq	__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerEPKvS6_S6_S6_
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__invalidate_all_iteratorsEv
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__invalidate_all_iteratorsEv: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE26__invalidate_all_iteratorsEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerEPKvS6_S6_S6_
__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerEPKvS6_S6_S6_: ## @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE31__annotate_contiguous_containerEPKvS6_S6_S6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv
__ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv: ## @_ZNKSt3__16vectorINS_6threadENS_9allocatorIS1_EEE4dataEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	__ZNSt3__1L16__to_raw_pointerINS_6threadEEEPT_S3_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L16move_if_noexceptINS_6threadEEENS_11conditionalIXaantsr29is_nothrow_move_constructibleIT_EE5valuesr21is_copy_constructibleIS3_EE5valueERKS3_OS3_E4typeERS3_
__ZNSt3__1L16move_if_noexceptINS_6threadEEENS_11conditionalIXaantsr29is_nothrow_move_constructibleIT_EE5valuesr21is_copy_constructibleIS3_EE5valueERKS3_OS3_E4typeERS3_: ## @_ZNSt3__1L16move_if_noexceptINS_6threadEEENS_11conditionalIXaantsr29is_nothrow_move_constructibleIT_EE5valuesr21is_copy_constructibleIS3_EE5valueERKS3_OS3_E4typeERS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__1L4moveIRNS_6threadEEEONS_16remove_referenceIT_E4typeEOS4_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L4moveIRPNS_6threadEEEONS_16remove_referenceIT_E4typeEOS5_
__ZNSt3__1L4moveIRPNS_6threadEEEONS_16remove_referenceIT_E4typeEOS5_: ## @_ZNSt3__1L4moveIRPNS_6threadEEEONS_16remove_referenceIT_E4typeEOS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev ## -- Begin function _ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev
	.p2align	4, 0x90
__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev: ## @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEED2Ev
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearEv
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	cmpq	$0, (%rdi)
	je	LBB173_3
## %bb.1:
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocEv
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	(%rdi), %rsi
Ltmp68:
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE8capacityEv
Ltmp69:
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	jmp	LBB173_2
LBB173_2:
	movq	-24(%rbp), %rdi         ## 8-byte Reload
	movq	-32(%rbp), %rsi         ## 8-byte Reload
	movq	-40(%rbp), %rdx         ## 8-byte Reload
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE10deallocateERS3_PS2_m
LBB173_3:
	addq	$48, %rsp
	popq	%rbp
	retq
LBB173_4:
Ltmp70:
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table173:
Lexception12:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp68-Lfunc_begin12   ## >> Call Site 1 <<
	.uleb128 Ltmp69-Ltmp68          ##   Call between Ltmp68 and Ltmp69
	.uleb128 Ltmp70-Lfunc_begin12   ##     jumps to Ltmp70
	.byte	1                       ##   On action: 1
Lcst_end12:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase7:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearEv
__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearEv: ## @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rsi
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endEPS1_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE8capacityEv
__ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE8capacityEv: ## @_ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capEv
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi         ## 8-byte Reload
	movq	(%rdi), %rcx
	subq	%rcx, %rax
	sarq	$3, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endEPS1_
__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endEPS1_: ## @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endEPS1_NS_17integral_constantIbLb0EEE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endEPS1_NS_17integral_constantIbLb0EEE
__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endEPS1_NS_17integral_constantIbLb0EEE: ## @_ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE17__destruct_at_endEPS1_NS_17integral_constantIbLb0EEE
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         ## 8-byte Spill
LBB177_1:                               ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx         ## 8-byte Reload
	cmpq	16(%rcx), %rax
	je	LBB177_4
## %bb.2:                               ##   in Loop: Header=BB177_1 Depth=1
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE7__allocEv
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	movq	16(%rdi), %rcx
	addq	$-8, %rcx
	movq	%rcx, 16(%rdi)
	movq	%rcx, %rdi
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__1L16__to_raw_pointerINS_6threadEEEPT_S3_
Ltmp71:
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6threadEEEE7destroyIS2_EEvRS3_PT_
Ltmp72:
	jmp	LBB177_3
LBB177_3:                               ##   in Loop: Header=BB177_1 Depth=1
	jmp	LBB177_1
LBB177_4:
	addq	$48, %rsp
	popq	%rbp
	retq
LBB177_5:
Ltmp73:
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         ## 8-byte Spill
	callq	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table177:
Lexception13:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp71-Lfunc_begin13   ## >> Call Site 1 <<
	.uleb128 Ltmp72-Ltmp71          ##   Call between Ltmp71 and Ltmp72
	.uleb128 Ltmp73-Lfunc_begin13   ##     jumps to Ltmp73
	.byte	1                       ##   On action: 1
Lcst_end13:
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
Lttbase8:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capEv
__ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capEv: ## @_ZNKSt3__114__split_bufferINS_6threadERNS_9allocatorIS1_EEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$24, %rdi
	callq	__ZNKSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstEv
__ZNKSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPNS_6threadERNS_9allocatorIS1_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__122__compressed_pair_elemIPNS_6threadELi0ELb0EE5__getEv
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__make_iterEPS1_
__ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__make_iterEPS1_: ## @_ZNSt3__16vectorINS_6threadENS_9allocatorIS1_EEE11__make_iterEPS1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	leaq	-8(%rbp), %rdi
	callq	__ZNSt3__111__wrap_iterIPNS_6threadEEC1ES2_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__111__wrap_iterIPNS_6threadEEC1ES2_
__ZNSt3__111__wrap_iterIPNS_6threadEEC1ES2_: ## @_ZNSt3__111__wrap_iterIPNS_6threadEEC1ES2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__ZNSt3__111__wrap_iterIPNS_6threadEEC2ES2_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__111__wrap_iterIPNS_6threadEEC2ES2_
__ZNSt3__111__wrap_iterIPNS_6threadEEC2ES2_: ## @_ZNSt3__111__wrap_iterIPNS_6threadEEC2ES2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1eqIPNS_6threadES2_EEbRKNS_11__wrap_iterIT_EERKNS3_IT0_EE
__ZNSt3__1eqIPNS_6threadES2_EEbRKNS_11__wrap_iterIT_EERKNS3_IT0_EE: ## @_ZNSt3__1eqIPNS_6threadES2_EEbRKNS_11__wrap_iterIT_EERKNS3_IT0_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__111__wrap_iterIPNS_6threadEE4baseEv
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__111__wrap_iterIPNS_6threadEE4baseEv
	movq	-24(%rbp), %rsi         ## 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__111__wrap_iterIPNS_6threadEE4baseEv
__ZNKSt3__111__wrap_iterIPNS_6threadEE4baseEv: ## @_ZNKSt3__111__wrap_iterIPNS_6threadEE4baseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp74:
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
Ltmp75:
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	jmp	LBB185_1
LBB185_1:
	movsbl	-9(%rbp), %esi
Ltmp76:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNKSt3__15ctypeIcE5widenEc
Ltmp77:
	movb	%al, -57(%rbp)          ## 1-byte Spill
	jmp	LBB185_2
LBB185_2:
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movb	-57(%rbp), %al          ## 1-byte Reload
	movsbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB185_3:
Ltmp78:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
## %bb.4:
	movq	-32(%rbp), %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table185:
Lexception14:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	255                     ## @TType Encoding = omit
	.byte	1                       ## Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Lfunc_begin14-Lfunc_begin14 ## >> Call Site 1 <<
	.uleb128 Ltmp74-Lfunc_begin14   ##   Call between Lfunc_begin14 and Ltmp74
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp74-Lfunc_begin14   ## >> Call Site 2 <<
	.uleb128 Ltmp77-Ltmp74          ##   Call between Ltmp74 and Ltmp77
	.uleb128 Ltmp78-Lfunc_begin14   ##     jumps to Ltmp78
	.byte	0                       ##   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin14   ## >> Call Site 3 <<
	.uleb128 Lfunc_end14-Ltmp77     ##   Call between Ltmp77 and Lfunc_end14
	.byte	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lcst_end14:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90         ## -- Begin function _ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE: ## @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function _ZNKSt3__15ctypeIcE5widenEc
__ZNKSt3__15ctypeIcE5widenEc:           ## @_ZNKSt3__15ctypeIcE5widenEc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movb	-9(%rbp), %al
	movq	(%rdi), %rcx
	movsbl	%al, %esi
	callq	*56(%rcx)
	movsbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"thread constructor failed"

L_.str.1:                               ## @.str.1
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"


.subsections_via_symbols

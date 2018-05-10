	.file	"/home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/build/cpu_em/vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0/csim/vector_add/vector_add.clc.csim_cu-opt.bc"
	.file	1 "/home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lsection_str:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.text
	.globl	_Z6printfPKU3AS0cz
	.align	16, 0x90
	.type	_Z6printfPKU3AS0cz,@function
_Z6printfPKU3AS0cz:                     # @_Z6printfPKU3AS0cz
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	subq	$488, %rsp              # imm = 0x1E8
.Ltmp13:
	.cfi_def_cfa_offset 544
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	testb	%al, %al
	je	.LBB0_2
# BB#1:
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm1, 128(%rsp)
	movaps	%xmm2, 144(%rsp)
	movaps	%xmm3, 160(%rsp)
	movaps	%xmm4, 176(%rsp)
	movaps	%xmm5, 192(%rsp)
	movaps	%xmm6, 208(%rsp)
	movaps	%xmm7, 224(%rsp)
.LBB0_2:
	movq	%r9, 104(%rsp)
	movq	%r8, 96(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%rdx, 80(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 264(%rsp)
	leaq	544(%rsp), %rax
	movq	%rax, 256(%rsp)
	movl	$48, 252(%rsp)
	movl	$16, 248(%rsp)
	movq	%rsi, %r12
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	callq	putchar@PLT
	incq	%r12
	.align	16, 0x90
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_22 Depth 4
                                        #         Child Loop BB0_30 Depth 4
                                        #         Child Loop BB0_44 Depth 4
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_133 Depth 2
                                        #     Child Loop BB0_140 Depth 2
	movsbl	(%r12), %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.LBB0_151
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	cmpb	$37, %dil
	jne	.LBB0_5
# BB#6:                                 #   in Loop: Header=BB0_3 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 400(%rsp)
	movaps	%xmm0, 384(%rsp)
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm0, 352(%rsp)
	movaps	%xmm0, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	movaps	%xmm0, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	movaps	%xmm0, 272(%rsp)
	movq	$0, 416(%rsp)
	movl	$-1, 284(%rsp)
	movl	$-1, 288(%rsp)
	movl	$0, 276(%rsp)
	movl	$1, 280(%rsp)
	movl	$1, %r14d
	xorb	%bpl, %bpl
	xorl	%r15d, %r15d
	jmp	.LBB0_7
	.align	16, 0x90
.LBB0_15:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_7 Depth=2
	orb	$16, %bpl
	movb	%bpl, 292(%rsp)
	.align	16, 0x90
.LBB0_7:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_8 Depth 3
                                        #         Child Loop BB0_22 Depth 4
                                        #         Child Loop BB0_30 Depth 4
                                        #         Child Loop BB0_44 Depth 4
	movq	%r12, %r13
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=3
	movl	$3, 276(%rsp)
	movl	$3, %r15d
	.align	16, 0x90
.LBB0_8:                                # %._crit_edge31.i
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_22 Depth 4
                                        #         Child Loop BB0_30 Depth 4
                                        #         Child Loop BB0_44 Depth 4
	leaq	1(%r13), %r12
	movsbl	1(%r13), %ebx
	leal	-32(%rbx), %eax
	cmpl	$88, %eax
	ja	.LBB0_101
# BB#9:                                 # %._crit_edge31.i
                                        #   in Loop: Header=BB0_8 Depth=3
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_25:                               # %._crit_edge9.i
                                        #   in Loop: Header=BB0_8 Depth=3
	orb	$64, %bpl
	movb	%bpl, 292(%rsp)
	movsbq	(%r12), %rbx
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	testb	$8, 1(%rax,%rbx,2)
	je	.LBB0_28
# BB#26:                                # %.lr.ph.i9.preheader.i
                                        #   in Loop: Header=BB0_8 Depth=3
	addl	$-48, %ebx
	movsbq	2(%r13), %rcx
	testb	$8, 1(%rax,%rcx,2)
	je	.LBB0_27
# BB#29:                                # %._crit_edge1.backedge.i12.i.preheader
                                        #   in Loop: Header=BB0_8 Depth=3
	incq	%r13
	.align	16, 0x90
.LBB0_30:                               # %._crit_edge1.backedge.i12.i
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	imull	$10, %ebx, %edx
	movsbl	%cl, %ecx
	leal	-48(%rcx,%rdx), %ebx
	movsbq	2(%r13), %rcx
	incq	%r13
	testb	$8, 1(%rax,%rcx,2)
	jne	.LBB0_30
	jmp	.LBB0_31
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=3
	movq	%r12, %r13
.LBB0_31:                               # %readNumber.exit16.i
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	%ebx, 288(%rsp)
	cmpl	$-1, %ebx
	jne	.LBB0_8
	jmp	.LBB0_32
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=3
	orb	$32, %bpl
	movb	%bpl, 292(%rsp)
	movsbq	2(%r13), %rbx
	leaq	2(%r13), %r12
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	testb	$8, 1(%rax,%rbx,2)
	jne	.LBB0_18
# BB#20:                                # %readNumber.exit.thread.i
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$-1, 284(%rsp)
	movq	%r12, %r13
	decq	%r13
	jmp	.LBB0_8
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=3
	movsbl	2(%r13), %eax
	addq	$2, %r13
	cmpl	$108, %eax
	je	.LBB0_36
# BB#34:                                #   in Loop: Header=BB0_8 Depth=3
	cmpl	$104, %eax
	jne	.LBB0_37
# BB#35:                                #   in Loop: Header=BB0_8 Depth=3
	movl	$1, 276(%rsp)
	movl	$1, %r15d
	jmp	.LBB0_8
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=3
	movsbq	2(%r13), %r14
	leaq	2(%r13), %rbx
	callq	__ctype_b_loc@PLT
	movq	(%rax), %rax
	testb	$8, 1(%rax,%r14,2)
	je	.LBB0_42
# BB#40:                                # %.lr.ph.i22.preheader.i
                                        #   in Loop: Header=BB0_8 Depth=3
	addl	$-48, %r14d
	movsbq	3(%r13), %rcx
	testb	$8, 1(%rax,%rcx,2)
	je	.LBB0_41
# BB#43:                                # %._crit_edge1.backedge.i25.i.preheader
                                        #   in Loop: Header=BB0_8 Depth=3
	addq	$2, %r13
	.align	16, 0x90
.LBB0_44:                               # %._crit_edge1.backedge.i25.i
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	imull	$10, %r14d, %edx
	movsbl	%cl, %ecx
	leal	-48(%rcx,%rdx), %r14d
	movsbq	2(%r13), %rcx
	incq	%r13
	testb	$8, 1(%rax,%rcx,2)
	jne	.LBB0_44
	jmp	.LBB0_45
.LBB0_18:                               # %.lr.ph.i1.preheader.i
                                        #   in Loop: Header=BB0_8 Depth=3
	addl	$-48, %ebx
	movsbq	3(%r13), %rcx
	testb	$8, 1(%rax,%rcx,2)
	je	.LBB0_19
# BB#21:                                # %._crit_edge1.backedge.i.i.preheader
                                        #   in Loop: Header=BB0_8 Depth=3
	addq	$2, %r13
	.align	16, 0x90
.LBB0_22:                               # %._crit_edge1.backedge.i.i
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        #       Parent Loop BB0_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	imull	$10, %ebx, %edx
	movsbl	%cl, %ecx
	leal	-48(%rcx,%rdx), %ebx
	movsbq	2(%r13), %rcx
	incq	%r13
	testb	$8, 1(%rax,%rcx,2)
	jne	.LBB0_22
	jmp	.LBB0_23
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=3
	movq	%rbx, %r13
.LBB0_45:                               # %readNumber.exit29.i
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	%r14d, 280(%rsp)
	cmpl	$16, %r14d
	ja	.LBB0_47
# BB#46:                                # %readNumber.exit29.i
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	$65820, %eax            # imm = 0x1011C
	btl	%r14d, %eax
	jb	.LBB0_8
	jmp	.LBB0_47
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=3
	movq	%r12, %r13
.LBB0_23:                               # %readNumber.exit.i
                                        #   in Loop: Header=BB0_8 Depth=3
	movl	%ebx, 284(%rsp)
	cmpl	$-1, %ebx
	jne	.LBB0_8
# BB#24:                                #   in Loop: Header=BB0_8 Depth=3
	decq	%r13
	jmp	.LBB0_8
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=2
	testb	$4, %bpl
	jne	.LBB0_15
# BB#14:                                #   in Loop: Header=BB0_7 Depth=2
	orb	$8, %bpl
	movb	%bpl, 292(%rsp)
	jmp	.LBB0_7
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=2
	orb	$4, %bpl
	movb	%bpl, 292(%rsp)
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	orb	$1, %bpl
	movb	%bpl, 292(%rsp)
	jmp	.LBB0_7
.LBB0_16:                               #   in Loop: Header=BB0_7 Depth=2
	orb	$2, %bpl
	movb	%bpl, 292(%rsp)
	jmp	.LBB0_7
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=2
	movl	$4, 276(%rsp)
	movl	$4, %r15d
	jmp	.LBB0_7
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=2
	movl	$2, 276(%rsp)
	movl	$2, %r15d
	jmp	.LBB0_7
.LBB0_86:                               # %._crit_edge24.i
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$2, %r14d
	jl	.LBB0_92
# BB#87:                                # %.lr.ph.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	248(%rsp), %ecx
	cmpl	$48, %ecx
	jae	.LBB0_89
# BB#88:                                # %.lr.ph.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	264(%rsp), %rax
	addq	%rcx, %rax
	addl	$8, %ecx
	movl	%ecx, 248(%rsp)
	jmp	.LBB0_90
.LBB0_92:                               #   in Loop: Header=BB0_3 Depth=1
	movl	252(%rsp), %ecx
	cmpl	$176, %ecx
	jae	.LBB0_94
# BB#93:                                #   in Loop: Header=BB0_3 Depth=1
	movq	264(%rsp), %rax
	addq	%rcx, %rax
	addl	$16, %ecx
	movl	%ecx, 252(%rsp)
	jmp	.LBB0_95
.LBB0_89:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	256(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 256(%rsp)
.LBB0_90:                               # %.lr.ph.i
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	468(%rsp), %r15
	movq	(%rax), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_91:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rax,%rcx,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 296(%rsp,%rcx,8)
	incq	%rcx
	movl	280(%rsp), %r14d
	cmpl	%r14d, %ecx
	jl	.LBB0_91
	jmp	.LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_3 Depth=1
	movq	256(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 256(%rsp)
.LBB0_95:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	468(%rsp), %r15
	movsd	(%rax), %xmm0
	movsd	%xmm0, 296(%rsp)
.LBB0_96:                               # %.loopexit.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	%bl, 272(%rsp)
	.align	16, 0x90
.LBB0_106:                              # %._crit_edge25.thread31.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str5(%rip), %rsi
	callq	strcpy@PLT
	movb	292(%rsp), %r13b
	testb	$1, %r13b
	je	.LBB0_108
# BB#107:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str6(%rip), %rsi
	callq	strcat@PLT
.LBB0_108:                              # %._crit_edge.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	testb	$4, %r13b
	je	.LBB0_110
# BB#109:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str7(%rip), %rsi
	callq	strcat@PLT
.LBB0_110:                              # %._crit_edge1.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	testb	$8, %r13b
	je	.LBB0_112
# BB#111:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str8(%rip), %rsi
	callq	strcat@PLT
.LBB0_112:                              # %._crit_edge2.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	testb	$16, %r13b
	je	.LBB0_114
# BB#113:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str9(%rip), %rsi
	callq	strcat@PLT
.LBB0_114:                              # %._crit_edge3.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	testb	$2, %r13b
	je	.LBB0_116
# BB#115:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str10(%rip), %rsi
	callq	strcat@PLT
.LBB0_116:                              # %._crit_edge4.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	288(%rsp), %edx
	testl	%edx, %edx
	jle	.LBB0_118
# BB#117:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	448(%rsp), %rbp
	movq	%rbp, %rdi
	leaq	.L.str11(%rip), %rsi
	xorb	%al, %al
	callq	sprintf@PLT
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	strcat@PLT
.LBB0_118:                              # %._crit_edge5.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	testb	$32, %r13b
	je	.LBB0_121
# BB#119:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str12(%rip), %rsi
	callq	strcat@PLT
	movl	284(%rsp), %edx
	testl	%edx, %edx
	js	.LBB0_121
# BB#120:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	428(%rsp), %rbp
	movq	%rbp, %rdi
	leaq	.L.str11(%rip), %rsi
	xorb	%al, %al
	callq	sprintf@PLT
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	strcat@PLT
.LBB0_121:                              # %._crit_edge6.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	276(%rsp), %eax
	cmpl	$4, %eax
	jne	.LBB0_122
# BB#126:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str15(%rip), %rsi
	jmp	.LBB0_127
.LBB0_122:                              # %._crit_edge6.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$2, %eax
	jne	.LBB0_123
# BB#125:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str14(%rip), %rsi
	jmp	.LBB0_127
.LBB0_123:                              # %._crit_edge6.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$1, %eax
	jne	.LBB0_128
# BB#124:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str135(%rip), %rsi
.LBB0_127:                              #   in Loop: Header=BB0_3 Depth=1
	callq	strcat@PLT
.LBB0_128:                              #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	leaq	.L.str8(%rip), %rsi
	callq	strcat@PLT
	movq	%r15, %rdi
	callq	strlen@PLT
	movb	%bl, -1(%rax,%r15)
	movsbl	%bl, %eax
	cmpl	$87, %eax
	jg	.LBB0_136
# BB#129:                               #   in Loop: Header=BB0_3 Depth=1
	addl	$-65, %eax
	cmpl	$6, %eax
	leaq	.L.str16(%rip), %r13
	ja	.LBB0_148
# BB#130:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$113, %ecx
	btl	%eax, %ecx
	jae	.LBB0_148
	jmp	.LBB0_131
.LBB0_136:                              #   in Loop: Header=BB0_3 Depth=1
	cmpl	$96, %eax
	leaq	.L.str16(%rip), %r13
	jg	.LBB0_143
# BB#137:                               #   in Loop: Header=BB0_3 Depth=1
	cmpl	$88, %eax
	jne	.LBB0_148
	jmp	.LBB0_138
.LBB0_143:                              #   in Loop: Header=BB0_3 Depth=1
	addl	$-97, %eax
	cmpl	$23, %eax
	ja	.LBB0_148
# BB#144:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	.LJTI0_3(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_131:                              # %._crit_edge23.preheader.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	testl	%r14d, %r14d
	jle	.LBB0_148
# BB#132:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	leal	-1(%r14), %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_133:                              # %.lr.ph.i.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	296(%rsp,%rbp,8), %xmm0
	movq	%r15, %rdi
	movb	$1, %al
	callq	printf@PLT
	cmpl	%ebx, %ebp
	jge	.LBB0_135
# BB#134:                               #   in Loop: Header=BB0_133 Depth=2
	movq	%r13, %rdi
	xorb	%al, %al
	callq	printf@PLT
.LBB0_135:                              # %._crit_edge26.i.i
                                        #   in Loop: Header=BB0_133 Depth=2
	incq	%rbp
	cmpl	%r14d, %ebp
	jl	.LBB0_133
	jmp	.LBB0_148
.LBB0_52:                               # %._crit_edge16.i
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpl	$2, %r14d
	jl	.LBB0_81
# BB#53:                                #   in Loop: Header=BB0_3 Depth=1
	decl	%r15d
	cmpl	$3, %r15d
	ja	.LBB0_149
# BB#54:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%ebx, %r8d
	leaq	.LJTI0_1(%rip), %rcx
	movslq	(%rcx,%r15,4), %rax
	addq	%rcx, %rax
	leaq	.LJTI0_2(%rip), %rbx
	jmpq	*%rax
.LBB0_55:                               #   in Loop: Header=BB0_3 Depth=1
	movl	248(%rsp), %ecx
	cmpl	$48, %ecx
	leaq	468(%rsp), %r15
	jae	.LBB0_57
# BB#56:                                #   in Loop: Header=BB0_3 Depth=1
	movq	264(%rsp), %rax
	addq	%rcx, %rax
	addl	$8, %ecx
	movl	%ecx, 248(%rsp)
	jmp	.LBB0_58
.LBB0_138:                              # %._crit_edge15.preheader.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	testl	%r14d, %r14d
	jle	.LBB0_148
# BB#139:                               # %.lr.ph4.i.i.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	leal	-1(%r14), %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_140:                              # %.lr.ph4.i.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	296(%rsp,%rbp,8), %rsi
	movq	%r15, %rdi
	xorb	%al, %al
	callq	printf@PLT
	cmpl	%ebx, %ebp
	jge	.LBB0_142
# BB#141:                               #   in Loop: Header=BB0_140 Depth=2
	movq	%r13, %rdi
	xorb	%al, %al
	callq	printf@PLT
.LBB0_142:                              # %._crit_edge25.i.i
                                        #   in Loop: Header=BB0_140 Depth=2
	incq	%rbp
	cmpl	%r14d, %ebp
	jl	.LBB0_140
	jmp	.LBB0_148
.LBB0_105:                              #   in Loop: Header=BB0_3 Depth=1
	movl	$37, %edi
	callq	putchar@PLT
	xorb	%bl, %bl
	leaq	468(%rsp), %r15
	jmp	.LBB0_106
.LBB0_48:                               #   in Loop: Header=BB0_3 Depth=1
	movl	248(%rsp), %ecx
	cmpl	$48, %ecx
	jae	.LBB0_50
# BB#49:                                #   in Loop: Header=BB0_3 Depth=1
	movq	264(%rsp), %rax
	addq	%rcx, %rax
	addl	$8, %ecx
	movl	%ecx, 248(%rsp)
	jmp	.LBB0_51
.LBB0_97:                               #   in Loop: Header=BB0_3 Depth=1
	movl	248(%rsp), %ecx
	cmpl	$48, %ecx
	jae	.LBB0_99
# BB#98:                                #   in Loop: Header=BB0_3 Depth=1
	movq	264(%rsp), %rax
	addq	%rcx, %rax
	addl	$8, %ecx
	movl	%ecx, 248(%rsp)
	jmp	.LBB0_100
.LBB0_146:                              #   in Loop: Header=BB0_3 Depth=1
	movsbl	296(%rsp), %esi
	testl	%esi, %esi
	jle	.LBB0_148
# BB#147:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r15, %rdi
	xorb	%al, %al
	callq	printf@PLT
.LBB0_148:                              # %processFormat.exit.i
                                        #   in Loop: Header=BB0_3 Depth=1
	incq	%r12
	jmp	.LBB0_3
.LBB0_145:                              #   in Loop: Header=BB0_3 Depth=1
	movq	296(%rsp), %rsi
	movq	%r15, %rdi
	xorb	%al, %al
	callq	printf@PLT
	incq	%r12
	jmp	.LBB0_3
.LBB0_81:                               #   in Loop: Header=BB0_3 Depth=1
	movl	%ebx, %r8d
	movl	248(%rsp), %ecx
	cmpl	$48, %ecx
	leaq	468(%rsp), %r15
	jae	.LBB0_83
# BB#82:                                #   in Loop: Header=BB0_3 Depth=1
	movq	264(%rsp), %rax
	addq	%rcx, %rax
	addl	$8, %ecx
	movl	%ecx, 248(%rsp)
	jmp	.LBB0_84
.LBB0_62:                               #   in Loop: Header=BB0_3 Depth=1
	movl	248(%rsp), %ecx
	cmpl	$48, %ecx
	leaq	468(%rsp), %r15
	jae	.LBB0_64
# BB#63:                                #   in Loop: Header=BB0_3 Depth=1
	movq	264(%rsp), %rax
	addq	%rcx, %rax
	addl	$8, %ecx
	movl	%ecx, 248(%rsp)
	jmp	.LBB0_65
.LBB0_66:                               #   in Loop: Header=BB0_3 Depth=1
	movl	248(%rsp), %ecx
	cmpl	$48, %ecx
	leaq	468(%rsp), %r15
	jae	.LBB0_68
# BB#67:                                #   in Loop: Header=BB0_3 Depth=1
	movq	264(%rsp), %rax
	addq	%rcx, %rax
	addl	$8, %ecx
	movl	%ecx, 248(%rsp)
	jmp	.LBB0_69
.LBB0_71:                               #   in Loop: Header=BB0_3 Depth=1
	movl	248(%rsp), %ecx
	cmpl	$48, %ecx
	leaq	468(%rsp), %r15
	jae	.LBB0_73
# BB#72:                                #   in Loop: Header=BB0_3 Depth=1
	movq	264(%rsp), %rax
	addq	%rcx, %rax
	addl	$8, %ecx
	movl	%ecx, 248(%rsp)
	jmp	.LBB0_74
.LBB0_57:                               #   in Loop: Header=BB0_3 Depth=1
	movq	256(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 256(%rsp)
.LBB0_58:                               #   in Loop: Header=BB0_3 Depth=1
	movq	(%rax), %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB0_59
.LBB0_50:                               #   in Loop: Header=BB0_3 Depth=1
	movq	256(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 256(%rsp)
.LBB0_51:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	468(%rsp), %r15
	movb	(%rax), %al
	movb	%al, 296(%rsp)
	movb	%bl, 272(%rsp)
	jmp	.LBB0_106
.LBB0_99:                               #   in Loop: Header=BB0_3 Depth=1
	movq	256(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 256(%rsp)
.LBB0_100:                              #   in Loop: Header=BB0_3 Depth=1
	leaq	468(%rsp), %r15
	movq	(%rax), %rax
	movq	%rax, 296(%rsp)
	movb	%bl, 272(%rsp)
	jmp	.LBB0_106
.LBB0_83:                               #   in Loop: Header=BB0_3 Depth=1
	movq	256(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 256(%rsp)
.LBB0_84:                               #   in Loop: Header=BB0_3 Depth=1
	movq	(%rax), %rax
	movq	%rax, 296(%rsp)
	jmp	.LBB0_85
.LBB0_64:                               #   in Loop: Header=BB0_3 Depth=1
	movq	256(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 256(%rsp)
.LBB0_65:                               #   in Loop: Header=BB0_3 Depth=1
	movq	(%rax), %rdx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.LBB0_59
.LBB0_68:                               #   in Loop: Header=BB0_3 Depth=1
	movq	256(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 256(%rsp)
.LBB0_69:                               #   in Loop: Header=BB0_3 Depth=1
	movq	(%rax), %rcx
	xorl	%eax, %eax
	jmp	.LBB0_70
.LBB0_73:                               #   in Loop: Header=BB0_3 Depth=1
	movq	256(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 256(%rsp)
.LBB0_74:                               #   in Loop: Header=BB0_3 Depth=1
	movq	(%rax), %rax
	xorl	%ecx, %ecx
.LBB0_70:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%edx, %edx
	xorl	%esi, %esi
.LBB0_59:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	testl	%r14d, %r14d
	jle	.LBB0_85
	.align	16, 0x90
.LBB0_60:                               # %.lr.ph38.i
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	276(%rsp), %ebp
	decl	%ebp
	cmpl	$3, %ebp
	ja	.LBB0_80
# BB#61:                                # %.lr.ph38.i
                                        #   in Loop: Header=BB0_60 Depth=2
	movslq	(%rbx,%rbp,4), %rbp
	addq	%rbx, %rbp
	jmpq	*%rbp
.LBB0_75:                               #   in Loop: Header=BB0_60 Depth=2
	movsbq	(%rsi,%rdi), %rbp
	jmp	.LBB0_79
.LBB0_76:                               #   in Loop: Header=BB0_60 Depth=2
	movswq	(%rdx,%rdi,2), %rbp
	jmp	.LBB0_79
.LBB0_77:                               #   in Loop: Header=BB0_60 Depth=2
	movslq	(%rcx,%rdi,4), %rbp
	jmp	.LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_60 Depth=2
	movq	(%rax,%rdi,8), %rbp
.LBB0_79:                               #   in Loop: Header=BB0_60 Depth=2
	movq	%rbp, 296(%rsp,%rdi,8)
.LBB0_80:                               #   in Loop: Header=BB0_60 Depth=2
	incq	%rdi
	movl	280(%rsp), %r14d
	cmpl	%r14d, %edi
	jl	.LBB0_60
.LBB0_85:                               # %.loopexit35.i
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%r8d, %ebx
	movb	%bl, 272(%rsp)
	jmp	.LBB0_106
.LBB0_101:
	movq	%r12, %rdi
	xorb	%al, %al
	callq	_ssdm_xcl_PtrToInt.64@PLT
	movq	%rax, %rbx
	movq	56(%rsp), %rdi          # 8-byte Reload
	xorb	%al, %al
	callq	_ssdm_xcl_PtrToInt.64@PLT
	subl	%eax, %ebx
	movsbl	(%r12), %esi
	testl	%esi, %esi
	je	.LBB0_102
# BB#104:
	leaq	.L.str4(%rip), %rdi
	movl	%ebx, %edx
	xorb	%al, %al
	callq	printf@PLT
	jmp	.LBB0_150
.LBB0_28:                               # %readNumber.exit16.thread.i
	movl	$-1, 288(%rsp)
	movq	%r12, %r13
.LBB0_32:                               # %.loopexit59.i
	movq	%r13, %rdi
	xorb	%al, %al
	callq	_ssdm_xcl_PtrToInt.64@PLT
	movq	%rax, %rbx
	movq	56(%rsp), %rdi          # 8-byte Reload
	xorb	%al, %al
	callq	_ssdm_xcl_PtrToInt.64@PLT
	subl	%eax, %ebx
	leaq	.L.str2(%rip), %rdi
	jmp	.LBB0_103
.LBB0_102:
	leaq	.L.str3(%rip), %rdi
	.align	16, 0x90
.LBB0_103:
	movl	%ebx, %esi
	xorb	%al, %al
	callq	printf@PLT
	.align	16, 0x90
.LBB0_150:
	movl	$-1, %eax
.LBB0_151:                              # %__xcl_printf_impl.exit
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB0_42:                               # %readNumber.exit29.thread.i
	movl	$-1, 280(%rsp)
	movq	%rbx, %r13
.LBB0_47:                               # %.loopexit58.i
	movq	%r13, %rdi
	xorb	%al, %al
	callq	_ssdm_xcl_PtrToInt.64@PLT
	movq	%rax, %rbx
	movq	56(%rsp), %rdi          # 8-byte Reload
	xorb	%al, %al
	callq	_ssdm_xcl_PtrToInt.64@PLT
	subl	%eax, %ebx
	leaq	.L.str13(%rip), %rdi
	jmp	.LBB0_103
.LBB0_149:
	leaq	.L.str24(%rip), %rdi
	xorb	%al, %al
	callq	printf@PLT
	jmp	.LBB0_150
.Ltmp20:
	.size	_Z6printfPKU3AS0cz, .Ltmp20-_Z6printfPKU3AS0cz
	.cfi_endproc
	.align	4, 0x90
.L0_0_set_13 = .LBB0_13-.LJTI0_0
.L0_0_set_101 = .LBB0_101-.LJTI0_0
.L0_0_set_15 = .LBB0_15-.LJTI0_0
.L0_0_set_105 = .LBB0_105-.LJTI0_0
.L0_0_set_12 = .LBB0_12-.LJTI0_0
.L0_0_set_10 = .LBB0_10-.LJTI0_0
.L0_0_set_17 = .LBB0_17-.LJTI0_0
.L0_0_set_16 = .LBB0_16-.LJTI0_0
.L0_0_set_25 = .LBB0_25-.LJTI0_0
.L0_0_set_86 = .LBB0_86-.LJTI0_0
.L0_0_set_52 = .LBB0_52-.LJTI0_0
.L0_0_set_48 = .LBB0_48-.LJTI0_0
.L0_0_set_33 = .LBB0_33-.LJTI0_0
.L0_0_set_38 = .LBB0_38-.LJTI0_0
.L0_0_set_97 = .LBB0_97-.LJTI0_0
.L0_0_set_39 = .LBB0_39-.LJTI0_0
.LJTI0_0:
	.long	.L0_0_set_13
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_15
	.long	.L0_0_set_101
	.long	.L0_0_set_105
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_12
	.long	.L0_0_set_101
	.long	.L0_0_set_10
	.long	.L0_0_set_17
	.long	.L0_0_set_101
	.long	.L0_0_set_16
	.long	.L0_0_set_25
	.long	.L0_0_set_25
	.long	.L0_0_set_25
	.long	.L0_0_set_25
	.long	.L0_0_set_25
	.long	.L0_0_set_25
	.long	.L0_0_set_25
	.long	.L0_0_set_25
	.long	.L0_0_set_25
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_86
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_86
	.long	.L0_0_set_86
	.long	.L0_0_set_86
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_52
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_86
	.long	.L0_0_set_101
	.long	.L0_0_set_48
	.long	.L0_0_set_52
	.long	.L0_0_set_86
	.long	.L0_0_set_86
	.long	.L0_0_set_86
	.long	.L0_0_set_33
	.long	.L0_0_set_52
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_38
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_52
	.long	.L0_0_set_52
	.long	.L0_0_set_101
	.long	.L0_0_set_101
	.long	.L0_0_set_97
	.long	.L0_0_set_101
	.long	.L0_0_set_52
	.long	.L0_0_set_39
	.long	.L0_0_set_101
	.long	.L0_0_set_52
.L0_1_set_55 = .LBB0_55-.LJTI0_1
.L0_1_set_62 = .LBB0_62-.LJTI0_1
.L0_1_set_66 = .LBB0_66-.LJTI0_1
.L0_1_set_71 = .LBB0_71-.LJTI0_1
.LJTI0_1:
	.long	.L0_1_set_55
	.long	.L0_1_set_62
	.long	.L0_1_set_66
	.long	.L0_1_set_71
.L0_2_set_75 = .LBB0_75-.LJTI0_2
.L0_2_set_76 = .LBB0_76-.LJTI0_2
.L0_2_set_77 = .LBB0_77-.LJTI0_2
.L0_2_set_78 = .LBB0_78-.LJTI0_2
.LJTI0_2:
	.long	.L0_2_set_75
	.long	.L0_2_set_76
	.long	.L0_2_set_77
	.long	.L0_2_set_78
.L0_3_set_131 = .LBB0_131-.LJTI0_3
.L0_3_set_148 = .LBB0_148-.LJTI0_3
.L0_3_set_146 = .LBB0_146-.LJTI0_3
.L0_3_set_138 = .LBB0_138-.LJTI0_3
.L0_3_set_145 = .LBB0_145-.LJTI0_3
.LJTI0_3:
	.long	.L0_3_set_131
	.long	.L0_3_set_148
	.long	.L0_3_set_146
	.long	.L0_3_set_138
	.long	.L0_3_set_131
	.long	.L0_3_set_131
	.long	.L0_3_set_131
	.long	.L0_3_set_148
	.long	.L0_3_set_138
	.long	.L0_3_set_148
	.long	.L0_3_set_148
	.long	.L0_3_set_148
	.long	.L0_3_set_148
	.long	.L0_3_set_148
	.long	.L0_3_set_138
	.long	.L0_3_set_138
	.long	.L0_3_set_148
	.long	.L0_3_set_148
	.long	.L0_3_set_145
	.long	.L0_3_set_148
	.long	.L0_3_set_138
	.long	.L0_3_set_148
	.long	.L0_3_set_148
	.long	.L0_3_set_138

	.globl	vector_add
	.align	16, 0x90
	.type	vector_add,@function
vector_add:                             # @vector_add
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 42 0                  # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:42:0
# BB#0:                                 # %.split
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$264200, %rsp           # imm = 0x40808
.Ltmp34:
	.cfi_def_cfa_offset 264256
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	#DEBUG_VALUE: vector_add:c <- RSI+0
	#DEBUG_VALUE: vector_add:a <- RDX+0
	#DEBUG_VALUE: vector_add:b <- RCX+0
	#DEBUG_VALUE: vector_add:dimension <- R8D+0
	#DEBUG_VALUE: vector_add:iterations <- R9D+0
.Ltmp41:
	#DEBUG_VALUE: vector_add:__xlnx_rt_info <- RDI+0
	movl	%r9d, %ebp
.Ltmp42:
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	movl	%r8d, %ebx
.Ltmp43:
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	movq	%rcx, %r15
.Ltmp44:
	#DEBUG_VALUE: vector_add:b <- R15+0
	movq	%rdx, %r12
.Ltmp45:
	#DEBUG_VALUE: vector_add:a <- R12+0
	movq	%rsi, (%rsp)            # 8-byte Spill
.Ltmp46:
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	leaq	.L.str(%rip), %rsi
	movl	%ebx, %edx
	xorb	%al, %al
	callq	_Z6printfPKU3AS0cz@PLT
	leaq	.L.str1(%rip), %rsi
	movl	%ebp, %edx
	xorb	%al, %al
	callq	_Z6printfPKU3AS0cz@PLT
	testl	%ebx, %ebx
	jle	.LBB1_2
.Ltmp47:
# BB#1:                                 # %.lr.ph20
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:a <- R12+0
	#DEBUG_VALUE: vector_add:b <- R15+0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	.loc	1 50 27 prologue_end    # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:50:27
	leal	-1(%rbx), %eax
	leaq	4(,%rax,4), %rdx
	leaq	263176(%rsp), %rdi
	.loc	1 50 50                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:50:50
	movq	%r12, %rsi
	callq	memcpy@PLT
.Ltmp48:
.LBB1_2:                                # %.preheader16
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:b <- R15+0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	.loc	1 51 27                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:51:27
	movl	%ebx, %eax
	imull	%eax, %eax
	testl	%eax, %eax
	jle	.LBB1_4
# BB#3:                                 # %.lr.ph18
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
.Ltmp49:
	#DEBUG_VALUE: vector_add:b <- R15+0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	decl	%eax
	leaq	4(,%rax,4), %rdx
	leaq	1032(%rsp), %rdi
	.loc	1 51 62                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:51:62
	movq	%r15, %rsi
	callq	memcpy@PLT
.Ltmp50:
.LBB1_4:                                # %.preheader14
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	.loc	1 53 22                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:53:22
	testl	%ebp, %ebp
	jle	.LBB1_14
# BB#5:                                 # %.preheader11.lr.ph
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	leal	-1(%rbx), %eax
	leaq	4(,%rax,4), %r15
	xorl	%r14d, %r14d
	leaq	8(%rsp), %r12
	.align	16, 0x90
.LBB1_6:                                # %.preheader11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_9 Depth 3
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	testl	%ebx, %ebx
	jle	.LBB1_13
# BB#7:                                 # %.preheader5.lr.ph
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	xorl	%r13d, %r13d
	.loc	1 55 58                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:55:58
.Ltmp51:
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movl	%r13d, %eax
.Ltmp52:
	.align	16, 0x90
.LBB1_8:                                # %.lr.ph7
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	.loc	1 58 68                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:58:68
	movslq	%eax, %rax
	movl	8(%rsp,%rax,4), %ecx
	xorl	%edx, %edx
.Ltmp53:
	.loc	1 56 21                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:56:21
	movl	%r13d, %esi
	.align	16, 0x90
.LBB1_9:                                #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	.loc	1 58 68                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:58:68
.Ltmp54:
	movslq	%esi, %rsi
	movl	1032(%rsp,%rsi,4), %edi
	imull	263176(%rsp,%rdx,4), %edi
	addl	%edi, %ecx
	.loc	1 58 45                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:58:45
	incl	%esi
	incq	%rdx
	cmpl	%ebx, %edx
	jl	.LBB1_9
# BB#10:                                #   in Loop: Header=BB1_8 Depth=2
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	.loc	1 58 68                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:58:68
	movl	%ecx, 8(%rsp,%rax,4)
.Ltmp55:
	.loc	1 56 21                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:56:21
	addl	%ebx, %r13d
	.loc	1 56 39                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:56:39
	incl	%eax
.Ltmp56:
	#DEBUG_VALUE: i <- EAX+0
	cmpl	%ebx, %eax
	jl	.LBB1_8
.Ltmp57:
# BB#11:                                # %.preheader2
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	testl	%ebx, %ebx
	jle	.LBB1_13
# BB#12:                                # %.lr.ph4
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	leaq	263176(%rsp), %rdi
	.loc	1 60 55                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:60:55
.Ltmp58:
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
.Ltmp59:
.LBB1_13:                               # %.preheader2.thread
                                        #   in Loop: Header=BB1_6 Depth=1
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	#DEBUG_VALUE: vector_add:iterations <- EBP+0
	.loc	1 53 43                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:53:43
	incl	%r14d
.Ltmp60:
	#DEBUG_VALUE: iter <- R14D+0
	cmpl	%ebp, %r14d
	jl	.LBB1_6
.Ltmp61:
.LBB1_14:                               # %.preheader
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	testl	%ebx, %ebx
	jle	.LBB1_16
# BB#15:                                # %.lr.ph
.Ltmp62:
	#DEBUG_VALUE: vector_add:c <- [%rsp+$0]+$0
	#DEBUG_VALUE: vector_add:dimension <- EBX+0
	.loc	1 63 27                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:63:27
	decl	%ebx
.Ltmp63:
	leaq	4(,%rbx,4), %rdx
	leaq	263176(%rsp), %rsi
	.loc	1 63 50                 # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:63:50
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	memcpy@PLT
.Ltmp64:
.LBB1_16:                               # %retBB
	.loc	1 65 1                  # /home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl:65:1
	addq	$264200, %rsp           # imm = 0x40808
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp65:
.Ltmp66:
	.size	vector_add, .Ltmp66-vector_add
.Lfunc_end1:
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.asciz	 "DIMENSION: %d\n"
	.size	.L.str, 15

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "ITERATIONS: %d\n"
	.size	.L.str1, 16

	.type	.L.str2,@object         # @.str2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str2:
	.asciz	 "printf error - bad field width at position %d\n"
	.size	.L.str2, 47

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	 "printf error: bad vector size at position %d\n"
	.size	.L.str13, 46

	.type	.L.str24,@object        # @.str24
.L.str24:
	.asciz	 "printf error - vector length not specified"
	.size	.L.str24, 43

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "printf error - premature format string termination at position %d\n"
	.size	.L.str3, 67

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "printf error - unsupported specifier '%c' at position %d\n"
	.size	.L.str4, 58

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "%"
	.size	.L.str5, 2

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "-"
	.size	.L.str6, 2

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "+"
	.size	.L.str7, 2

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 " "
	.size	.L.str8, 2

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "#"
	.size	.L.str9, 2

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "0"
	.size	.L.str10, 2

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	 "%d"
	.size	.L.str11, 3

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	 "."
	.size	.L.str12, 2

	.type	.L.str135,@object       # @.str135
.L.str135:
	.asciz	 "hh"
	.size	.L.str135, 3

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	 "h"
	.size	.L.str14, 2

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	 "l"
	.size	.L.str15, 2

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	 ","
	.size	.L.str16, 2

	.cfi_sections .debug_frame
	.text
.Ltext_end:
	.data
.Ldata_end:
	.text
.Lsection_end1:
	.section	.debug_info,"",@progbits
.Linfo_begin1:
	.long	587                     # Length of Compilation Unit Info
	.short	2                       # DWARF version number
	.long	.Labbrev_begin          # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x244 DW_TAG_compile_unit
	.long	.Lstring0               # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Lstring1               # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Lstring2               # DW_AT_comp_dir
	.byte	2                       # Abbrev [2] 0x26:0x1d6 DW_TAG_subprogram
	.long	.Lstring3               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	1                       # DW_AT_prototyped
	.byte	1                       # DW_AT_external
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.quad	.Lfunc_end1             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	87
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.byte	3                       # Abbrev [3] 0x42:0xcc DW_TAG_structure_type
	.long	.Lstring27              # DW_AT_name
	.byte	128                     # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x4a:0xf DW_TAG_member
	.long	.Lstring11              # DW_AT_name
	.long	530                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	0
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0x59:0xf DW_TAG_member
	.long	.Lstring13              # DW_AT_name
	.long	540                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	4
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0x68:0xf DW_TAG_member
	.long	.Lstring14              # DW_AT_name
	.long	540                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	16
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0x77:0xf DW_TAG_member
	.long	.Lstring15              # DW_AT_name
	.long	540                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	28
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0x86:0xf DW_TAG_member
	.long	.Lstring16              # DW_AT_name
	.long	540                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	40
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0x95:0xf DW_TAG_member
	.long	.Lstring17              # DW_AT_name
	.long	540                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	52
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0xa4:0xf DW_TAG_member
	.long	.Lstring18              # DW_AT_name
	.long	540                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	64
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0xb3:0xf DW_TAG_member
	.long	.Lstring19              # DW_AT_name
	.long	540                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	76
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0xc2:0xf DW_TAG_member
	.long	.Lstring20              # DW_AT_name
	.long	545                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	88
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0xd1:0xf DW_TAG_member
	.long	.Lstring21              # DW_AT_name
	.long	546                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	96
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0xe0:0xf DW_TAG_member
	.long	.Lstring23              # DW_AT_name
	.long	545                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	104
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0xef:0xf DW_TAG_member
	.long	.Lstring24              # DW_AT_name
	.long	545                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	112
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	4                       # Abbrev [4] 0xfe:0xf DW_TAG_member
	.long	.Lstring25              # DW_AT_name
	.long	553                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	1                       # DW_AT_decl_line
	.byte	2                       # DW_AT_data_member_location
	.byte	35
	.byte	120
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x10e:0xf DW_TAG_formal_parameter
	.long	.Lstring4               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	515                     # DW_AT_type
.Lset0 = .Ldebug_loc0-.Lsection_debug_loc # DW_AT_location
	.long	.Lset0
	.byte	5                       # Abbrev [5] 0x11d:0xf DW_TAG_formal_parameter
	.long	.Lstring6               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.long	525                     # DW_AT_type
.Lset1 = .Ldebug_loc4-.Lsection_debug_loc # DW_AT_location
	.long	.Lset1
	.byte	5                       # Abbrev [5] 0x12c:0xf DW_TAG_formal_parameter
	.long	.Lstring7               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.long	525                     # DW_AT_type
.Lset2 = .Ldebug_loc8-.Lsection_debug_loc # DW_AT_location
	.long	.Lset2
	.byte	5                       # Abbrev [5] 0x13b:0xf DW_TAG_formal_parameter
	.long	.Lstring8               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.long	520                     # DW_AT_type
.Lset3 = .Ldebug_loc12-.Lsection_debug_loc # DW_AT_location
	.long	.Lset3
	.byte	5                       # Abbrev [5] 0x14a:0xf DW_TAG_formal_parameter
	.long	.Lstring9               # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.long	520                     # DW_AT_type
.Lset4 = .Ldebug_loc16-.Lsection_debug_loc # DW_AT_location
	.long	.Lset4
	.byte	6                       # Abbrev [6] 0x159:0xf DW_TAG_variable
	.long	.Lstring10              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	560                     # DW_AT_type
.Lset5 = .Ldebug_loc20-.Lsection_debug_loc # DW_AT_location
	.long	.Lset5
	.byte	7                       # Abbrev [7] 0x168:0x93 DW_TAG_lexical_block
	.quad	.Ltmp47                 # DW_AT_low_pc
	.quad	.Ltmp65                 # DW_AT_high_pc
	.byte	8                       # Abbrev [8] 0x179:0x10 DW_TAG_variable
	.long	.Lstring28              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	565                     # DW_AT_type
	.byte	4                       # DW_AT_location
	.byte	145
	.ascii	 "\210\210\020"
	.byte	8                       # Abbrev [8] 0x189:0xf DW_TAG_variable
	.long	.Lstring29              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	577                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	 "\210\b"
	.byte	8                       # Abbrev [8] 0x198:0xe DW_TAG_variable
	.long	.Lstring30              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	565                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	8
	.byte	7                       # Abbrev [7] 0x1a6:0x54 DW_TAG_lexical_block
	.quad	.Ltmp50                 # DW_AT_low_pc
	.quad	.Ltmp61                 # DW_AT_high_pc
	.byte	6                       # Abbrev [6] 0x1b7:0xf DW_TAG_variable
	.long	.Lstring31              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	508                     # DW_AT_type
.Lset6 = .Ldebug_loc24-.Lsection_debug_loc # DW_AT_location
	.long	.Lset6
	.byte	7                       # Abbrev [7] 0x1c6:0x33 DW_TAG_lexical_block
	.quad	.Ltmp51                 # DW_AT_low_pc
	.quad	.Ltmp59                 # DW_AT_high_pc
	.byte	7                       # Abbrev [7] 0x1d7:0x21 DW_TAG_lexical_block
	.quad	.Ltmp52                 # DW_AT_low_pc
	.quad	.Ltmp57                 # DW_AT_high_pc
	.byte	6                       # Abbrev [6] 0x1e8:0xf DW_TAG_variable
	.long	.Lstring32              # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.long	508                     # DW_AT_type
.Lset7 = .Ldebug_loc22-.Lsection_debug_loc # DW_AT_location
	.long	.Lset7
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x1fc:0x7 DW_TAG_base_type
	.long	.Lstring5               # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x203:0x5 DW_TAG_pointer_type
	.long	508                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x208:0x5 DW_TAG_const_type
	.long	508                     # DW_AT_type
	.byte	10                      # Abbrev [10] 0x20d:0x5 DW_TAG_pointer_type
	.long	520                     # DW_AT_type
	.byte	9                       # Abbrev [9] 0x212:0x7 DW_TAG_base_type
	.long	.Lstring12              # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	12                      # Abbrev [12] 0x219:0x3 DW_TAG_base_type
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	13                      # Abbrev [13] 0x21c:0x5 DW_TAG_array_type
	.long	530                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x221:0x1 DW_TAG_pointer_type
	.byte	9                       # Abbrev [9] 0x222:0x7 DW_TAG_base_type
	.long	.Lstring22              # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	9                       # Abbrev [9] 0x229:0x7 DW_TAG_base_type
	.long	.Lstring26              # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x230:0x5 DW_TAG_pointer_type
	.long	66                      # DW_AT_type
	.byte	15                      # Abbrev [15] 0x235:0xc DW_TAG_array_type
	.long	508                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x23a:0x6 DW_TAG_subrange_type
	.long	537                     # DW_AT_type
	.byte	255                     # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x241:0xd DW_TAG_array_type
	.long	508                     # DW_AT_type
	.byte	17                      # Abbrev [17] 0x246:0x7 DW_TAG_subrange_type
	.long	537                     # DW_AT_type
	.short	65535                   # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.Linfo_end1:
	.section	.debug_abbrev,"",@progbits
.Labbrev_begin:
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	16                      # DW_AT_stmt_list
	.byte	6                       # DW_FORM_data4
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	12                      # DW_FORM_flag
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	 "\347\177"             # DW_AT_APPLE_omit_frame_ptr
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	10                      # DW_FORM_block1
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
.Labbrev_end:
	.section	.debug_pubtypes,"",@progbits
.Lset8 = .Lpubtypes_end1-.Lpubtypes_begin1 # Length of Public Types Info
	.long	.Lset8
.Lpubtypes_begin1:
	.short	2                       # DWARF Version
	.long	.Linfo_begin1           # Offset of Compilation Unit Info
.Lset9 = .Linfo_end1-.Linfo_begin1      # Compilation Unit Length
	.long	.Lset9
	.long	0                       # End Mark
.Lpubtypes_end1:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.quad	.Lfunc_begin1
	.quad	.Ltmp46
.Lset10 = .Ltmp68-.Ltmp67               # Loc expr size
	.short	.Lset10
.Ltmp67:
	.byte	84                      # DW_OP_reg4
.Ltmp68:
	.quad	.Ltmp46
	.quad	.Lfunc_end1
.Lset11 = .Ltmp70-.Ltmp69               # Loc expr size
	.short	.Lset11
.Ltmp69:
	.byte	87                      # DW_OP_reg7
.Ltmp70:
	.quad	0
	.quad	0
.Ldebug_loc4:
	.quad	.Lfunc_begin1
	.quad	.Ltmp45
.Lset12 = .Ltmp72-.Ltmp71               # Loc expr size
	.short	.Lset12
.Ltmp71:
	.byte	81                      # DW_OP_reg1
.Ltmp72:
	.quad	.Ltmp45
	.quad	.Ltmp48
.Lset13 = .Ltmp74-.Ltmp73               # Loc expr size
	.short	.Lset13
.Ltmp73:
	.byte	92                      # DW_OP_reg12
.Ltmp74:
	.quad	0
	.quad	0
.Ldebug_loc8:
	.quad	.Lfunc_begin1
	.quad	.Ltmp44
.Lset14 = .Ltmp76-.Ltmp75               # Loc expr size
	.short	.Lset14
.Ltmp75:
	.byte	82                      # DW_OP_reg2
.Ltmp76:
	.quad	.Ltmp44
	.quad	.Ltmp50
.Lset15 = .Ltmp78-.Ltmp77               # Loc expr size
	.short	.Lset15
.Ltmp77:
	.byte	95                      # DW_OP_reg15
.Ltmp78:
	.quad	0
	.quad	0
.Ldebug_loc12:
	.quad	.Lfunc_begin1
	.quad	.Ltmp43
.Lset16 = .Ltmp80-.Ltmp79               # Loc expr size
	.short	.Lset16
.Ltmp79:
	.byte	88                      # DW_OP_reg8
.Ltmp80:
	.quad	.Ltmp43
	.quad	.Ltmp63
.Lset17 = .Ltmp82-.Ltmp81               # Loc expr size
	.short	.Lset17
.Ltmp81:
	.byte	83                      # DW_OP_reg3
.Ltmp82:
	.quad	0
	.quad	0
.Ldebug_loc16:
	.quad	.Lfunc_begin1
	.quad	.Ltmp42
.Lset18 = .Ltmp84-.Ltmp83               # Loc expr size
	.short	.Lset18
.Ltmp83:
	.byte	89                      # DW_OP_reg9
.Ltmp84:
	.quad	.Ltmp42
	.quad	.Ltmp61
.Lset19 = .Ltmp86-.Ltmp85               # Loc expr size
	.short	.Lset19
.Ltmp85:
	.byte	86                      # DW_OP_reg6
.Ltmp86:
	.quad	0
	.quad	0
.Ldebug_loc20:
	.quad	.Ltmp41
	.quad	.Ltmp47
.Lset20 = .Ltmp88-.Ltmp87               # Loc expr size
	.short	.Lset20
.Ltmp87:
	.byte	85                      # DW_OP_reg5
.Ltmp88:
	.quad	0
	.quad	0
.Ldebug_loc22:
	.quad	.Ltmp56
	.quad	.Ltmp57
.Lset21 = .Ltmp90-.Ltmp89               # Loc expr size
	.short	.Lset21
.Ltmp89:
	.byte	80                      # DW_OP_reg0
.Ltmp90:
	.quad	0
	.quad	0
.Ldebug_loc24:
	.quad	.Ltmp60
	.quad	.Ltmp61
.Lset22 = .Ltmp92-.Ltmp91               # Loc expr size
	.short	.Lset22
.Ltmp91:
	.byte	94                      # DW_OP_reg14
.Ltmp92:
	.quad	0
	.quad	0
.Ldebug_loc26:
	.section	.debug_aranges,"",@progbits
	.section	.debug_ranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Lstring0:
	.asciz	 "clang version 3.1 "
.Lstring1:
	.asciz	 "/home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl/_xocc_link_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0_vector_addition.sw_emu.xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0.dir/impl/kernels/vector_add/vector_add/cpu_sources/vector_addition.cl"
.Lstring2:
	.asciz	 "/home/centos/src/project_data/aws-fpga/SDAccel/examples/xilinx/getting_started/host/helloworld_ocl"
.Lstring3:
	.asciz	 "vector_add"
.Lstring4:
	.asciz	 "c"
.Lstring5:
	.asciz	 "int"
.Lstring6:
	.asciz	 "a"
.Lstring7:
	.asciz	 "b"
.Lstring8:
	.asciz	 "dimension"
.Lstring9:
	.asciz	 "iterations"
.Lstring10:
	.asciz	 "__xlnx_rt_info"
.Lstring11:
	.asciz	 "work_dim"
.Lstring12:
	.asciz	 "unsigned int"
.Lstring13:
	.asciz	 "global_size"
.Lstring14:
	.asciz	 "global_id"
.Lstring15:
	.asciz	 "local_size"
.Lstring16:
	.asciz	 "local_id"
.Lstring17:
	.asciz	 "num_groups"
.Lstring18:
	.asciz	 "group_id"
.Lstring19:
	.asciz	 "global_offset"
.Lstring20:
	.asciz	 "pthread_barrier"
.Lstring21:
	.asciz	 "barriertoscheduler"
.Lstring22:
	.asciz	 "char"
.Lstring23:
	.asciz	 "scheduler_context"
.Lstring24:
	.asciz	 "pe_context"
.Lstring25:
	.asciz	 "printf_buffer"
.Lstring26:
	.asciz	 "unsigned long long int"
.Lstring27:
	.asciz	 "__spir_rt_info_t"
.Lstring28:
	.asciz	 "vec_in"
.Lstring29:
	.asciz	 "mat_in"
.Lstring30:
	.asciz	 "vec_out"
.Lstring31:
	.asciz	 "iter"
.Lstring32:
	.asciz	 "i"

	.section	".note.GNU-stack","",@progbits

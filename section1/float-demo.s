	.text
	.p2align 4
	.globl _fun1
_fun1:
LFB0:
	addss	%xmm1, %xmm0 #浮点数传参用XMM寄存器，加法用addss指令
	addss	lC0(%rip), %xmm0 #把常量2.0加到xmm0上，xmm0保存返回值
	ret
LFE0:
	.literal4
	.align 2
lC0:
	.long	1073741824
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB0-.
	.set L$set$2,LFE0-LFB0
	.quad L$set$2
	.byte	0
	.align 3
LEFDE1:
	.ident	"GCC: (Homebrew GCC 9.3.0_1) 9.3.0"
	.subsections_via_symbols

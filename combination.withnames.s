main	lw	0	tmp	N	tmp = n
	add	0	tmp	n	n = tmp
	lw	0	tmp	R	tmp = r
	add	0	tmp	r	r = tmp
	lw	0	var	combi	var = combi.addr
	jalr	var	tmp		tmp = pc+1; j var
	halt
	noop
combi	beq	r	0	base	test r == 0
	beq	n	r	base	test n == r
	lw	0	tmp	neg8	tmp = -8
	add	tmp	st	st	st = -8 + st
	sw	st	n	0	mem[st + 0] = n
	sw	st	r	4	mem[st + 4] = r
	lw	0	tmp	neg1	tmp = -1
	add	tmp	n	n	n = -1 + n
	lw	0	var	combi	var = combi.addr
	jalr	var	ra		ra = pc+1; j var
	lw	st	n	0	n = mem[st + 0]
	lw	st	r	4	r = mem[st + 4]
	lw	0	tmp	neg1	tmp = -1
	add	tmp	n	n	n = -1 + n
	add	tmp	r	r	r = -1 + r
	lw	0	var	combi	var = combi.addr
	jalr	var	ra		ra = pc+1; j var
	lw	0	tmp	pos8	tmp = 8
	add	tmp	st	st	st = 8 + st
	jalr	ra	tmp		tmp = pc+1; j ra
	noop
base	lw	0	tmp	pos1	tmp = 1
	add	tmp	ret	ret	ret = 1 + ret
	jalr	ra	tmp		tmp = pc+1; j ra
	noop
N	.fill	10
R	.fill	5
pos1	.fill	1
pos8	.fill	8
neg1	.fill	-1
neg8	.fill	-8

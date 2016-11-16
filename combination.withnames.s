combi	beq	r	0	base	test r == 0
	beq	n	r	base	test n == r
	lw	0	tmp	neg8	tmp = -8
	add	st	st	tmp	st = st + tmp
	sw	st	n	0	mem[st + 0] = n
	sw	st	r	4	mem[st + 4] = r
	lw	0	tmp	neg1	tmp = -1
	add	n	n	tmp	n = n - 1
	lw	0	var	combi	var = combi.addr
	jalr	var	ra		ra = pc+1; j var
	lw	st	n	0	n = mem[st + 0]
	lw	st	r	4	r = mem[st + 4]
	lw	0	tmp	neg1	tmp = -1
	add	n	n	tmp	n = n - 1
	add	r	r	tmp	r = r - 1
	lw	0	var	combi	var = combi.addr
	jalr	var	ra		ra = pc+1; j var
	lw	0	tmp	pos8	tmp = +8
	add	st	st	tmp	st = st + tmp
	jalr	ra	tmp		tmp = pc+1; j ra
	
base	lw	0	tmp	pos1	tmp = +1
	add	ret	ret	tmp	ret = ret + 1
	jalr	ra	tmp		tmp = pc+1; j ra

pos1	.fill	1
pos8	.fill	8
neg1	.fill	-1
neg8	.fill	-8

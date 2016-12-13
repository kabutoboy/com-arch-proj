main	lw	0	5	sp
	lw	0	1	n
	beq	0	1	end0
	lw	0	6	pos1
	beq	6	1	end1
	lw	0	6	neg1
	nand	6	1	2	~n = -n-1
	add	2	5	5	sp -= n+1
	sw	5	0	0	F[0] = 0
	lw	0	6	pos1
	sw	5	6	1	F[1] = 1
	lw	0	6	pos2
	add	0	6	4	i = 2
	lw	0	6	pos1
	add	6	1	1	n += 1
lpBeg	beq	4	1	lpEnd	i == n+1
	lw	0	6	neg1
	add	4	6	2	n-1
	add	5	2	2	sp+n-1
	lw	2	3	0	ret = F[n-1]
	add	6	2	2	sp+n-2
	lw	2	6	0	tmp = F[n-2]
	add	6	3	3	ret += tmp
	add	5	4	2	sp+n
	sw	2	3	0	save ret
	lw	0	6	pos1
	add	6	4	4	i += 1
	beq	0	0	lpBeg
end0	add	0	0	3
	beq	0	0	lpEnd
end1	add	0	6	3
	beq	0	0	lpEnd
lpEnd	halt
	
sp	.fill	65536
n	.fill	33
pos1	.fill	1
pos2	.fill	2
neg1	.fill	-1
neg2	.fill	-2

main	lw	0	5	sp
	lw	0	1	n
	lw	0	6	fibAddr
	jalr	6	7
	halt
fib	beq	1	0	ret0	n = 0?
	lw	0	4	pos1	n = 1?
	beq	1	4	ret1
	lw	0	6	neg3
	add	6	5	5	sp -= 3
	sw	5	7	0	save ra
	sw	5	1	1	save n
	lw	0	6	neg1
	add	6	1	1	n -= 1
	lw	0	6	fibAddr
	jalr	6	7
	sw	5	3	2	save ret
	lw	5	1	1	load n
	lw	0	6	neg2
	add	6	1	1	n -= 2
	lw	0	6	fibAddr
	jalr	6	7
	lw	5	4	2	load ret
	add	4	3	3	acc ret
	lw	5	7	0	load ra
	lw	0	6	pos3
	add	6	5	5	sp += 3
	jalr	7	6
ret0	add	0	0	3
	jalr	7	6
ret1	add	0	4	3
	jalr	7	6
n	.fill	33
pos1	.fill	1
pos2	.fill	2
pos3	.fill	3
neg1	.fill	-1
neg2	.fill	-2
neg3	.fill	-3
sp	.fill	65536
fibAddr	.fill	fib

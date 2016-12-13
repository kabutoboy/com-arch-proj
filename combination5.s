main	lw	0	5	arr
	add	0	0	1
	add	0	0	2
loop	lw	0	6	cmbAdr
	jalr	6	7
	lw	0	6	r
	beq	2	6	almost
nah	lw	0	6	pos1
	add	6	2	2	increment j
	lw	0	6	pos1
	add	1	6	6
	beq	2	6	inci
	beq	0	0	loop
inci	add	0	0	2
	lw	0	6	pos1
	add	6	1	1
	beq	0	0	loop
almost	lw	0	6	n
	beq	1	6	done
	beq	0	0	nah
done	halt
combi	beq	1	2	base
	beq	2	0	base
	lw	0	6	neg1
	add	6	1	4
	add	4	4	4	1
	add	4	4	4	2
	add	4	4	4	3
	add	4	4	4	4
	add	4	4	4	shift left 5
	add	5	4	4	shift by arr
	add	2	4	4
	lw	4	3	0	ret = C[(n-1)<<5+r]
	add	6	4	4	
	lw	4	6	0	
	add	6	3	3	ret += C[(n-1)<<5+(r-1)]
	lw	0	6	n0	C[n<<5+(r-1)]
	add	6	4	4
	lw	0	6	pos1	C[n<<5+r]
	add	6	4	4
	sw	4	3	0	save C[n<<5+r]
	jalr	7	6
base	add	0	1	4
	add	4	4	4	1
	add	4	4	4	2
	add	4	4	4	3
	add	4	4	4	4
	add	4	4	4	shift left 5
	add	5	4	4	shift by arr
	add	2	4	4
	lw	0	3	pos1	
	sw	4	3	0	save C[n<<5+r]
	jalr	7	6
n	.fill	20
r	.fill	10
n0	.fill	32
arr	.fill	32768
pos1	.fill	1
neg1	.fill	-1
cmbAdr	.fill	combi

main	lw	0	5	arr
	add	0	0	1
	add	0	0	2
	add	0	0	7
loop	beq	1	2	base
	beq	2	0	base
	lw	0	6	negn0
	add	6	7	4
	add	5	4	4	shift by arr
	add	2	4	4
	lw	4	3	0	ret = C[(n-1)<<5+r]
	lw	0	6	neg1
	add	6	4	4	
	lw	4	6	0	
	add	6	3	3	ret += C[(n-1)<<5+(r-1)]
	lw	0	6	n0	C[n<<5+(r-1)]
	add	6	4	4
	lw	0	6	pos1	C[n<<5+r]
	add	6	4	4
	sw	4	3	0	save C[n<<5+r]
	beq	0	0	back
base	add	0	7	4
	add	5	4	4	shift by arr
	add	2	4	4
	lw	0	3	pos1	
	sw	4	3	0	save C[n<<5+r]
back	lw	0	6	r
	beq	2	6	almost
notyet	lw	0	6	pos1
	add	6	2	2	increment j
	add	1	6	3
	beq	2	3	inci
	beq	0	0	loop
inci	add	0	0	2
	add	6	1	1	increment i
	lw	0	6	n0
	add	6	7	7
	beq	0	0	loop
almost	lw	0	6	n
	beq	1	6	done
	beq	0	0	notyet
done	halt
n	.fill	7
r	.fill	3
n0	.fill	32
negn0	.fill	-32
arr	.fill	32768
pos1	.fill	1
neg1	.fill	-1

main	lw	0	5	sp	
	lw	0	1	n	
	lw	0	2	r	
	lw	0	6	pos1
	add	6	1	1	n += 1
	add	6	2	2	r += 1
	lw	0	4	mulAddr	n*r
	jalr	4	7		
	lw	0	6	neg1
	nand	6	3	4	~(n*r)
	lw	0	6	pos1
	add	6	4	4	~(n*r)+1 = -(n*r)
	add	4	5	5	shift sp by -(nr) = A
	lw	0	6	neg3
	add	6	5	5	shift sp by -3
	add	0	0	6	tmp = 0
	sw	5	6	0	i = 0
	sw	5	6	1	j = 0
loopBeg	lw	5	1	0	n = i
	lw	5	2	1	r = j
	lw	0	6	cmbAddr
	jalr	6	7		C(n,r)
	sw	5	3	2	store C(n,r)
	lw	5	1	0	n = i
	lw	0	2	r	r = R
	lw	0	6	pos1
	add	6	2	2	r = R+1
	lw	0	6	mulAddr	
	jalr	6	7		ret = n*R
	lw	5	4	2	restore C(n,r)
	lw	5	6	1	t = j
	add	6	3	3	ret = n*R + j
	lw	0	6	pos3	
	add	6	3	3	shift ret by  3
	add	5	3	3	v = A + n*R + j
	sw	3	4	0	A[n*R + j] = C(n,r)
	beq	0	0	incJ
incI	lw	5	1	0	restore i
	lw	0	6	pos1
	add	6	1	1	i++
	sw	5	1	0	save i
	add	0	0	2	reset j
	sw	5	2	1	save j
	lw	0	4	n
	add	6	4	4	n + 1
	beq	1	4	loopEnd	i == n + 1
	beq	0	0	loopBeg	quick jump
incJ	lw	5	2	1	restore j
	lw	0	6	pos1
	add	6	2	2	j++
	sw	5	2	1	save j
	lw	0	4	r
	add	6	4	4	r + 1
	beq	2	4	incI	j == r + 1
	beq	0	0	loopBeg	quick jump
loopEnd	lw	0	6	pos3
	add	6	5	5	shift sp back to A
	halt
	noop
mul	add	0	0	3	reset prod
	lw	0	4	fifteen	load counter
	lw	0	6	neg1	load neg1
	add	6	5	5	shift stack pointer
	sw	0	4	5	push stack
mulLoop	add	3	3	3	left shift prod
	lw	0	6	mask	load mask
	nand	2	6	4	test mplier.msb
	lw	0	6	neg1	load neg1
	beq	4	6	mulSkip	mplier.msb is 0; skip
	add	1	3	3	add mcand to prod
mulSkip	add	2	2	2	shift left mplier
	lw	0	4	5	restore counter
	lw	0	6	neg1	load neg1
	add	6	4	4	count down
	sw	0	4	5	save counter
	beq	4	0	mulDone	branch if counter is 0
	lw	0	4	mlpAddr	load mulLoop addr
	jalr	4	6		loop again
mulDone	lw	0	6	pos1	load pos1
	add	6	5	5	pop stack
	jalr	7	6		return
	noop
cmb	beq	1	0	cmbN0
	beq	2	0	cmbRet1
	beq	1	2	cmbRet1
	add	0	0	3	reset return val
	add	0	0	4	reset local var
	lw	0	6	neg5
	add	6	5	5	shift sp by 5
	sw	5	7	0
	sw	5	1	1
	sw	5	2	2
	lw	0	2	pos1
	lw	0	6	gteAddr
	jalr	6	7
	beq	3	0	cmbSet0	n-1 < 0
	lw	0	6	neg1
	add	6	1	1	n-1
	lw	0	2	r	R
	lw	0	6	pos1
	add	6	2	2	R+1
	lw	0	6	mulAddr
	jalr	6	7		(n-1)*R
	lw	5	2	2	restore r
	add	2	3	3	(n-1)*R + r
	lw	0	6	pos8
	add	3	6	6	shift by (n-1)*R + r
	add	5	6	6	shift by A[0]
	sw	5	6	3	store addr
	lw	6	3	0	load A[(n-1)*R + r]
	sw	5	3	4	store ret
	lw	5	1	2	restore r
	lw	0	2	pos1	
	lw	0	6	gteAddr
	jalr	6	7	
	beq	3	0	cmbDone	r-1 < 0
	lw	5	4	3	restore (n-1)*R + r
	lw	0	6	neg1
	add	6	4	4	(n-1)*R + (r-1)
	lw	4	4	0	load A[(n-1)*R + (r-1)]
	lw	5	3	4	restore ret
	add	4	3	3	accumulate ret
cmbDone	lw	5	7	0	restore ra
	lw	0	6	pos5
	add	6	5	5
	jalr	7	6
cmbSet0	add	0	0	3
	beq	0	0	cmbDone	quick jump without link
cmbN0	beq	2	0	cmbRet1
cmbRet0	add	0	0	3
	jalr	7	6
cmbRet1	lw	0	6	pos1
	add	0	6	3
	jalr	7	6
	noop
gte	lw	0	6	neg1
	nand	2	6	4	~y
	lw	0	6	pos1
	add	6	4	4	~y+1 = -y
	add	1	4	4	x-y
	lw	0	6	mask
	nand	6	4	4
	lw	0	6	neg1
	beq	4	6	gteTrue
	add	0	0	3
	jalr	7	6
gteTrue	lw	0	3	pos1
	jalr	7	6
	noop
n	.fill	30
r	.fill	15
sp	.fill	65536
cmbAddr	.fill	cmb
pos1	.fill	1
pos2	.fill	2
pos3	.fill	3
pos4	.fill	4
pos5	.fill	5
pos8	.fill	8
neg1	.fill	-1
neg2	.fill	-2
neg3	.fill	-3
neg4	.fill	-4
neg5	.fill	-5
neg8	.fill	-8
gteAddr	.fill	gte
mcand	.fill	32766
mplier	.fill	10383
mask	.fill	16384			2^14
fifteen	.fill	15
mulAddr	.fill	mul
mlpAddr	.fill	mulLoop

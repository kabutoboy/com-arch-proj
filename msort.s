main	lw	0	5	sp
	lw	0	6	neg4
	add	6	5	5	push by 4
	lw	0	6	a3
	sw	5	6	0
	lw	0	6	a2
	sw	5	6	1
	lw	0	6	a4
	sw	5	6	2
	lw	0	6	a1
	sw	5	6	3
	lw	0	6	neg4
	add	6	5	5	push by 4
	add	0	0	1
	lw	0	2	pos4
	lw	0	6	mstAdr
	jalr	6	7	
	halt
msort	lw	0	4	pos1	merge size
	add	0	0	1	where at
	lw	0	6	neg8
	add	6	5	5	push stack
	sw	5	7	0	save ra
loop	sw	5	1	1	save index
	sw	5	2	2	save length
	sw	5	4	3	save merge size
loop0	add	0	1	6	i
	add	1	4	7	j
	add	0	7	1
	add	0	4	2
	sw	5	6	4	save i
	sw	5	7	5	save j
	lw	0	6	gteAdr
	jalr	6	7
	lw	5	6	4	load i
	lw	5	7	5	load j
	beq	0	3	left
	add	0	6	1
	add	0	4	2
	sw	5	6	4	save i
	sw	5	7	5	save j
	lw	0	6	gteAdr
	jalr	6	7
	lw	5	6	4	load i
	lw	5	7	5	load j
	beq	0	3	right
	lw	0	3	pos8	shift by current stack 6
	add	3	5	1
	add	0	1	2
	lw	5	3	2	load arr length
	add	3	1	1	shift by arr length
	add	3	2	2	shift by arr length
	add	7	1	1
	add	6	2	2
	lw	1	1	0	load arr[j]
	lw	2	2	0	load arr[i]
	sw	5	6	4	save i
	sw	5	7	5	save j
	sw	5	2	6	save arr[i]
	sw	5	1	7	save arr[j]
	lw	0	6	gteAdr
	jalr	6	7		arr[j] >= arr[i]
	lw	5	6	4	load i
	lw	5	7	5	load j
	beq	0	3	right	arr[j] < arr[i]; gets chosen
left	lw	0	3	pos8
	add	5	3	1
	lw	5	3	2
	add	0	1	3
	add	6	7	1	k = i+j
	lw	5	4	3	merge size
	beq	1	3	cont
	add	1	3	3
	add	3	2	2
	add	6	2	2
	lw	2	2	0	arr[i]
	sw	3	2	0	arr[k] = arr[i]
	lw	0	1	pos1
	add	1	6	6
	beq	0	0	after
right	lw	0	3	pos8
	add	5	3	1
	lw	5	3	2
	add	0	1	3	sp + 8
	add	6	7	1	k = i+j
	lw	5	4	3	merge size
	beq	1	3	cont
	add	3	2	2
	add	1	3	3
	add	7	2	2
	lw	2	2	0	arr[j]
	sw	3	2	0	arr[k] = arr[j]
	lw	0	1	pos1
	add	1	7	7
after	lw	5	1	1
	lw	5	2	2
	sw	5	6	4	save i
	sw	5	7	5	save j
	lw	0	6	gteAdr
	jalr	6	7
	lw	5	6	4	load i
	lw	5	7	5	load j
	beq	3	0	loop0	continue looping
	add	0	4	1
	sw	5	6	4	save i
	sw	5	7	5	save j
	lw	0	6	gteAdr
	jalr	6	7
	lw	5	6	4	load i
	lw	5	7	5	load j
	beq	3	0	cont
	lw	5	7	0	load ra
	lw	0	6	pos8
	add	6	5	5	pop stack
	jalr	7	6		sorted
cont	lw	5	4	3
	add	4	4	4	double merge size
	add	0	0	1
	beq	0	0	loop0
gte	nand	2	2	4	~b
	lw	0	6	pos1
	add	6	4	4	~b+1 = -b
	add	1	4	4	a-b
	lw	0	6	gteMsk
	nand	6	4	3
	nand	3	3	3
	beq	6	3	gteNeg
gtePos	lw	0	3	pos1
	jalr	7	6
gteNeg	add	0	0	3
	jalr	7	6
sp	.fill	65536
a0	.fill	1
a1	.fill	2
a2	.fill	3
a3	.fill	4
a4	.fill	5
a5	.fill	6
a6	.fill	7
a7	.fill	8
pos1	.fill	1
pos2	.fill	2
pos3	.fill	3
pos4	.fill	4
pos5	.fill	5
pos6	.fill	6
pos7	.fill	7
pos8	.fill	8
neg1	.fill	-1
neg2	.fill	-2
neg3	.fill	-3
neg4	.fill	-4
neg5	.fill	-5
neg6	.fill	-6
neg7	.fill	-7
neg8	.fill	-8
gteMsk	.fill	65536
gteAdr	.fill	gte
mstAdr	.fill	msort

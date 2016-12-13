	lw	0	1	n
	lw	0	2	r
	lw	0	5	one
	beq	2	5	r1
	beq	2	0	r0
	lw	0	4	mem
	lw	0	7	dec
	nand	2	7	6
	add	5	6	6
	add	7	1	1
	sw	4	1	4
	add	1	6	1
	sw	4	1	2
	add	7	1	6
	sw	4	6	5
	add	2	7	2
	sw	4	2	3
	add	7	2	6
	sw	4	6	6
	nand	2	7	2
	add	2	5	2
	sw	4	2	8
	lw	0	6	array
	sw	4	6	7
For	sw	4	0	0
	sw	4	0	1
	add	6	7	7
loopI	lw	4	1	0
	lw	4	6	2
	beq	1	6	r_
loopJ	lw	4	2	1
	lw	4	6	3
	beq	2	6	setI
	add	7	5	7
if1	beq	1	0	else1
	beq	2	0	else1
	lw	0	6	dec
	add	7	6	6
	lw	6	1	0
	lw	4	6	8
	add	7	6	6
	lw	6	2	0
	add	1	2	1
	sw	7	1	0
	beq	0	0	if2
else1	sw	7	5	0
if2	lw	4	1	0
	lw	4	2	1
	lw	4	6	5
	sw	4	0	9
	beq	1	6	jump1
	beq	0	0	else2
jump1	sw	4	5	9
else2	lw	4	6	6
	beq	2	6	jump2
	beq	0	0	cal
jump2	lw	4	6	9
	add	6	5	6
	sw	4	6	9
cal	lw	4	6	9
	beq	6	0	setJ
	add	1	2	1
	lw	0	6	dec
	nand	6	1	1
	add	5	1	1
	lw	4	6	4
	add	6	1	1
	lw	7	6	0
	add	1	0	2
	sw	4	7	7
	lw	0	7	dec
mul	beq	6	5	endMul
	add	2	1	2
	add	6	7	6
	beq	0	0	mul
endMul	lw	4	6	9
	lw	4	7	7
	beq	6	5	count
	add	2	2	2
count	add	3	2	3
setJ	lw	4	2	1
	add	2	5	2
	sw	4	2	1
	beq	0	0	loopJ
setI	lw	4	1	0
	add	1	5	1
	sw	4	1	0
	sw	4	0	1
	beq	0	0	loopI
r_	halt
r1	lw	0	5	n
	add	0	5	3
	halt			
r0	add	0	5	3
	halt			
n	.fill	20
r	.fill	10
dec	.fill	-1
one	.fill	1
mem	.fill	99
array	.fill	109

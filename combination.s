main	lw	0	1	N	
	lw	0	2	R	
	lw	0	5	sp	
	lw	0	4	neg1	
	lw	0	6	caddr	
	jalr	6	7		
	halt
	noop
combi	beq	2	0	base	
	beq	1	2	base	
	lw	0	6	pos1
	beq	2	6	chs1
	lw	0	6	pos2
	beq	1	6	base2
	lw	0	6	pos3
	beq	1	6	base3
	lw	0	6	neg3	
	add	6	5	5	
	add	4	1	1	
	sw	5	7	0
	sw	5	1	1	
	sw	5	2	2	
	lw	0	6	caddr	
	jalr	6	7		
	lw	5	1	1
	lw	5	2	2	
	add	4	2	2	
	lw	0	6	caddr	
	jalr	6	7		
	lw	5	7	0
	lw	0	6	pos3
	add	6	5	5	
	jalr	7	6		
	noop
base	lw	0	6	pos1	
	add	6	3	3	
	jalr	7	6		
chs1	add	1	3	3
	jalr	7	6
base2	add	6	3	3
	jalr	7	6
base3	lw	0	6	pos3
	add	6	3	3
	jalr	7	6
	noop
N	.fill	3
R	.fill	1
sp	.fill	65535
caddr	.fill	combi
pos1	.fill	1
pos2	.fill	2
pos3	.fill	3
pos6	.fill	6
neg1	.fill	-1
neg3	.fill	-3

main	lw	0	1	N	
	lw	0	2	R	
	lw	0	5	sp	
	lw	0	4	caddr	
	jalr	4	7		
	halt
	noop
combi	beq	2	0	base	
	beq	1	2	base	
	lw	0	6	neg3	
	add	6	5	5	
	sw	5	7	0
	sw	5	1	1	
	sw	5	2	2	
	lw	0	6	neg1	
	add	6	1	1	
	lw	0	4	caddr	
	jalr	4	7		
	lw	5	1	1
	lw	5	2	2	
	lw	0	6	neg1	
	add	6	1	1	
	add	6	2	2	
	lw	0	4	caddr	
	jalr	4	7		
	lw	5	7	0
	lw	0	6	pos3
	add	6	5	5	
	jalr	7	6		
	noop
base	lw	0	6	pos1	
	add	6	3	3	
	jalr	7	6		
	noop
N	.fill	10
R	.fill	5
sp	.fill	65536
caddr	.fill	combi
pos1	.fill	1
pos3	.fill	3
neg1	.fill	-1
neg3	.fill	-3

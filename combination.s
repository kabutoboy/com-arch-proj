combi	beq	2	0	base	
	beq	1	2	base	
	lw	0	6	neg8	
	add	5	5	6	
	sw	5	1	0	
	sw	5	2	4	
	lw	0	6	neg1	
	add	1	1	6	
	lw	0	4	combi	
	jalr	4	7		
	lw	5	1	0	
	lw	5	2	4	
	lw	0	6	neg1	
	add	1	1	6	
	add	2	2	6	
	lw	0	4	combi	
	jalr	4	7		
	lw	0	6	pos8	
	add	5	5	6	
	jalr	7	6		
	noop
base	lw	0	6	pos1	
	add	3	3	6	
	jalr	7	6		
	noop
pos1	.fill	1
pos8	.fill	8
neg1	.fill	-1
neg8	.fill	-8

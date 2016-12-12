	lw	0	2	mcand
	lw	0	3	mplier
	lw	0	4	one
	lw	0	5	maxnum
loop	nand	3	4	6
	nand	6	6	6
	beq	4	5	exit
	beq	6	0	no
	add	2	1	1
no	add	2	2	2
	add	4	4	4
	beq	0	0	loop
exit	halt
mcand	.fill	32766
mplier	.fill	10383
one	.fill	1
maxnum	.fill	16384

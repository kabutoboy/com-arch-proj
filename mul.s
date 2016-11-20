mul	add	0	0	3	reset prod
	lw	0	5	sp	load stack
	lw	0	1	mcand	load mcand
	lw	0	2	mplier	load mplier
	lw	0	4	len	load counter
	lw	0	6	neg1	load neg1
	add	6	5	5	shift stack pointer
	sw	0	4	5	push stack
loop	add	3	3	3	left shift prod
	lw	0	6	mask	load mask
	nand	2	6	4	test mplier.msb
	lw	0	6	neg1	load neg1
	beq	4	6	skip	mplier.msb is 0; skip
	add	1	3	3	add mcand to prod
skip	add	2	2	2	shift left mplier
	lw	0	4	5	restore counter
	lw	0	6	neg1	load neg1
	add	6	4	4	count down
	sw	0	4	5	save counter
	beq	4	0	done	branch if counter is 0
	lw	0	4	lpaddr	load loop addr
	jalr	4	6		loop again
done	lw	0	6	pos1	load pos1
	add	6	5	5	pop stack
	halt				halt
	noop
sp	.fill	65535			last address
mcand	.fill	0
mplier	.fill	2
mask	.fill	-2147483647			1000...
pos1	.fill	1
neg1	.fill	-1
len	.fill	32
lpaddr	.fill	loop

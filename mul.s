mul	add	0	0	3	reset prod
	lw	0	5	sp	load stack
	lw	0	1	mcand	load mcand
	lw	0	2	mplier	load mplier
	lw	0	7	pos1	load counter
	lw	0	6	mask	load mask
loop	add	3	3	3	left shift prod
	nand	2	6	4	test mplier.msb
	nand	4	4	4
	beq	0	4	skip	mplier.msb is 0; skip
	add	1	3	3	add mcand to prod
skip	add	2	2	2	shift left mplier
	add	7	7	7	count up
	beq	6	7	done	done if counter is 2^15
	beq	0	0	loop	quick jump
done	add	3	3	3	left shift prod
	nand	2	6	4	test mplier.msb
	nand	4	4	4
	beq	0	4	skip2	mplier.msb is 0; skip
	add	1	3	3	add mcand to prod
skip2	add	2	2	2	shift left mplier
	halt
sp	.fill	65536			last address
mcand	.fill	65535
mplier	.fill	5
mask	.fill	32768			1000...
pos1	.fill	1
neg1	.fill	-1

mul	add	0	0	3	reset prod
	lw	0	5	sp	load stack
	lw	0	1	mcand	load mcand
	lw	0	2	mplier	load mplier
	lw	0	7	len	load counter
loop	add	3	3	3	
	add	3	3	3	shift left prod by 2
	lw	0	6	mask2	load mask
	nand	2	6	4	test mplier
	lw	0	6	case0	load case0
	beq	4	6	skip
	add	1	3	3	add mcand to prod
	lw	0	6	case1	load case1
	beq	4	6	skip
	add	1	3	3	add mcand to prod
	lw	0	6	case2	load case2
	beq	4	6	skip
	add	1	3	3	add mcand to prod
skip	add	2	2	2	
	add	2	2	2	shift left mplier by 2
	lw	0	6	neg2	load neg2
	add	6	7	7	count down
	beq	0	7	done	done if counter is 0
	beq	0	0	loop	quick jump
done	halt				halt
	noop
sp	.fill	65536			last address
mcand	.fill	32766
mplier	.fill	10383
mask1	.fill	32768			1000...
mask2	.fill	49152			1100...
case0	.fill	-1			1111...
case1	.fill	-16385			1011...
case2	.fill	-32769			0111...
case3	.fill	-49153			0011...
pos1	.fill	1
neg1	.fill	-1			1111...
pos2	.fill	2
neg2	.fill	-2
pos4	.fill	4
neg4	.fill	-4
pos8	.fill	8
neg8	.fill	-8
len	.fill	16
lpaddr	.fill	loop

mul	lw	0	5	sp
	lw	0	1	mcand	load mcand
	lw	0	2	mplier	load mplier
	sw	0	0	0	mem[0000...] = mcand * 0000
	add	0	1	6
	sw	0	6	4096	mem[0001...] = mcand * 0001
	add	1	6	6
	sw	0	6	8192	mem[0010...] = mcand * 0010
	add	1	6	6
	sw	0	6	12288	mem[0011...] = mcand * 0011
	add	1	6	6
	sw	0	6	16384	mem[0100...] = mcand * 0100
	add	1	6	6
	sw	0	6	20480	mem[0101...] = mcand * 0101
	add	1	6	6
	sw	0	6	24576	mem[0110...] = mcand * 0110
	add	1	6	6
	sw	0	6	28672	mem[0111...] = mcand * 0111
	lw	0	6	mask7	load mask
	lw	0	7	pos1	load counter
	lw	0	0	maxcnt
loop	add	3	3	3	
	add	3	3	3	
	add	3	3	3	shift prod by 3
	nand	2	6	4	test mplier
	nand	4	4	4	flip bits
	lw	4	4	0	load mcand * xxxx
	add	4	3	3	add mcand * xxxx
	add	2	2	2	
	add	2	2	2	
	add	2	2	2	shift mplier by 3
	add	7	7	7	count down
	beq	0	7	done	done if counter is 0
	beq	0	0	loop	quick jump
done	halt
sp	.fill	65536			
mcand	.fill	32766
mplier	.fill	10383
mask1	.fill	32768			1000...
mask2	.fill	49152			1100...
mask4	.fill	61440			1111...
mask7	.fill	28672			0111...
pos1	.fill	1
neg1	.fill	-1			1111...
pos2	.fill	2
neg2	.fill	-2
maxcnt	.fill	32

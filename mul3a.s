mul	lw	0	5	sp
	lw	0	1	mcand	load mcand
	lw	0	2	mplier	load mplier
	lw	0	6	mask1
	lw	0	7	neg3
	add	7	5	5	reserve three
	lw	0	7	neg1
	lw	0	4	pos1
	nand	1	6	3	
	sw	5	3	0	signed bit at sp + 0
	beq	3	7	mcPos
	nand	7	1	1
	add	4	1	1	positive representation
mcPos	nand	2	6	3
	sw	5	3	1	signed bit at sp + 1
	beq	3	7	mpPos
	nand	7	2	2
	add	4	2	2	positive representation
mpPos	lw	0	7	pos1	load counter
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
	add	0	0	3	reset prod
	lw	0	6	mask7	load mask
	sw	5	0	2	save zero
	lw	0	0	maxcnt
loop	add	3	3	3	
	add	3	3	3	
	add	3	3	3	shift prod by 3
	nand	2	6	4	test mplier
	nand	4	4	4	flip bits
	lw	4	4	0	load mcand * xxxx
	add	4	3	3	add mcand * xxxx
skip	add	2	2	2	
	add	2	2	2	
	add	2	2	2	shift mplier by 3
	add	7	7	7	count down
	beq	0	7	done	done if counter is 0
	beq	0	0	loop	quick jump
done	lw	5	6	0
	lw	5	7	1
	lw	5	0	2	restore zero
	beq	6	7	ret
	nand	3	3	3	flip bits
	lw	0	6	pos1
	add	6	3	3
	beq	0	0	ret
ret	lw	0	6	pos3
	add	6	5	5
	halt				halt
	noop
sp	.fill	65536			
mcand	.fill	-1
mplier	.fill	-5
mask1	.fill	32768			1000...
mask2	.fill	49152			1100...
mask4	.fill	61440			1111...
mask7	.fill	28672			0111...
pos1	.fill	1
neg1	.fill	-1			1111...
pos2	.fill	2
neg2	.fill	-2
pos3	.fill	3
neg3	.fill	-3
maxcnt	.fill	32

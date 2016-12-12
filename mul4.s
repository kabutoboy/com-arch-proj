mul	add	0	0	3	reset prod
	lw	0	5	sp
	lw	0	1	mcand	load mcand
	lw	0	2	mplier	load mplier
	lw	0	7	len	load counter
	sw	0	0	0	mem[00000...] = mcand * 0000
	add	0	1	6
	sw	0	6	4096	mem[00001...] = mcand * 0001
	add	1	6	6
	sw	0	6	8192	mem[00010...] = mcand * 0010
	add	1	6	6
	sw	0	6	12288	mem[00011...] = mcand * 0011
	add	1	6	6
	sw	0	6	16384	mem[00100...] = mcand * 0100
	add	1	6	6
	sw	0	6	20480	mem[00101...] = mcand * 0101
	add	1	6	6
	sw	0	6	24576	mem[00110...] = mcand * 0110
	add	1	6	6
	sw	0	6	28672	mem[00111...] = mcand * 0111
	add	1	6	6
	sw	0	6	1	mem[01000...] = mcand * 1000
	add	1	6	6
	sw	0	6	4097	mem[01001...] = mcand * 1001
	add	1	6	6
	sw	0	6	8193	mem[01010...] = mcand * 1010
	add	1	6	6
	sw	0	6	12289	mem[01011...] = mcand * 1011
	add	1	6	6
	sw	0	6	16385	mem[01100...] = mcand * 1100
	add	1	6	6
	sw	0	6	20481	mem[01101...] = mcand * 1101
	add	1	6	6
	sw	0	6	24577	mem[01110...] = mcand * 1110
	add	1	6	6
	sw	0	6	28673	mem[01111...] = mcand * 1111
loop	add	3	3	3	
	add	3	3	3	
	add	3	3	3	
	add	3	3	3	shift prod by 4
	lw	0	6	mask7	load mask
	nand	2	6	4	test mplier
	lw	0	6	pos1
	nand	6	4	4	flip bits
	lw	0	6	mask1
	nand	2	6	6
	nand	0	6	6
	beg	0	6	even	msb = 0?
odd	lw	0	6	pos1
	add	6	4	4
even	lw	4	6	0	load mcand * xxxx
	add	6	3	3	add mcand * xxxx
skip	add	2	2	2	
	add	2	2	2	
	add	2	2	2	
	add	2	2	2	shift mplier by 4
	lw	0	6	neg4	load neg2
	add	6	7	7	count down
	beq	0	7	done	done if counter is 0
	beq	0	0	loop	quick jump
done	halt				halt
	noop
sp	.fill	65536			
mcand	.fill	32766
mplier	.fill	10383
mask1	.fill	32768			1000...
mask2	.fill	49152			1100...
mask4	.fill	61440			1111...
mask7	.fill	28672			0111...
case0	.fill	-1			1111...
case1	.fill	-4097			1110...
case2	.fill	-8193			1101...
case3	.fill	-12289			1100...
case4	.fill	-16385			1011...
case5	.fill	-20481			1010...
case6	.fill	-24577			1001...
case7	.fill	-28673			1000...
case8	.fill	-32769			0111...
case9	.fill	-36865			0110...
case10	.fill	-40961			0101...
case11	.fill	-45057			0100...
case12	.fill	-49153			0011...
case13	.fill	-53249			0010...
case14	.fill	-57345			0001...
case15	.fill	-61441			0000...
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

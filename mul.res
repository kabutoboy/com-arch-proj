@@@
state:
	pc 0
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 0
		reg[6] 0
		reg[7] 0
end state

add	0	0	3

@@@
state:
	pc 1
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 0
		reg[6] 0
		reg[7] 0
end state

lw	0	5	26

@@@
state:
	pc 2
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65535
		reg[6] 0
		reg[7] 0
end state

lw	0	1	27

@@@
state:
	pc 3
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65535
		reg[6] 0
		reg[7] 0
end state

lw	0	2	28

@@@
state:
	pc 4
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10383
		reg[3] 0
		reg[4] 0
		reg[5] 65535
		reg[6] 0
		reg[7] 0
end state

lw	0	4	32

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10383
		reg[3] 0
		reg[4] 15
		reg[5] 65535
		reg[6] 0
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 6
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10383
		reg[3] 0
		reg[4] 15
		reg[5] 65535
		reg[6] -1
		reg[7] 0
end state

add	6	5	5

@@@
state:
	pc 7
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10383
		reg[3] 0
		reg[4] 15
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10383
		reg[3] 0
		reg[4] 15
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10383
		reg[3] 0
		reg[4] 15
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10383
		reg[3] 0
		reg[4] 15
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10383
		reg[3] 0
		reg[4] -1
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10383
		reg[3] 0
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10383
		reg[3] 0
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] 15
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] 15
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] 14
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] 14
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] 14
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] -16385
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 0
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	1	3	3

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 20766
		reg[3] 32766
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 32766
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 32766
		reg[4] 14
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 32766
		reg[4] 14
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 32766
		reg[4] 13
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 32766
		reg[4] 13
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 32766
		reg[4] 13
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 32766
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 32766
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 65532
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 65532
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 65532
		reg[4] -1
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 65532
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 41532
		reg[3] 65532
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 65532
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 65532
		reg[4] 13
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 65532
		reg[4] 13
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 65532
		reg[4] 12
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 65532
		reg[4] 12
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 65532
		reg[4] 12
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 65532
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 65532
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 131064
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 131064
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 131064
		reg[4] -16385
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 131064
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 131064
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	1	3	3

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 83064
		reg[3] 163830
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 163830
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 163830
		reg[4] 12
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 163830
		reg[4] 12
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 163830
		reg[4] 11
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 163830
		reg[4] 11
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 163830
		reg[4] 11
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 163830
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 163830
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 327660
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 327660
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 327660
		reg[4] -1
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 327660
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 166128
		reg[3] 327660
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 327660
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 327660
		reg[4] 11
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 327660
		reg[4] 11
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 327660
		reg[4] 10
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 327660
		reg[4] 10
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 327660
		reg[4] 10
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 327660
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 327660
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 655320
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 655320
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 655320
		reg[4] -1
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 655320
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 332256
		reg[3] 655320
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 655320
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 655320
		reg[4] 10
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 655320
		reg[4] 10
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 655320
		reg[4] 9
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 655320
		reg[4] 9
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 655320
		reg[4] 9
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 655320
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 655320
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 1310640
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 1310640
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 1310640
		reg[4] -1
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 1310640
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 664512
		reg[3] 1310640
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 1310640
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 1310640
		reg[4] 9
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 1310640
		reg[4] 9
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 1310640
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 1310640
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 1310640
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 1310640
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 1310640
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 2621280
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 2621280
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 2621280
		reg[4] -16385
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 2621280
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 2621280
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	1	3	3

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 1329024
		reg[3] 2654046
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 2654046
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 2654046
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 2654046
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 2654046
		reg[4] 7
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 2654046
		reg[4] 7
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 2654046
		reg[4] 7
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 2654046
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 2654046
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 5308092
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 5308092
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 5308092
		reg[4] -1
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 5308092
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 2658048
		reg[3] 5308092
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 5308092
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 5308092
		reg[4] 7
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 5308092
		reg[4] 7
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 5308092
		reg[4] 6
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 5308092
		reg[4] 6
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 5308092
		reg[4] 6
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 5308092
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 5308092
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 10616184
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 10616184
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 10616184
		reg[4] -1
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 10616184
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 5316096
		reg[3] 10616184
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 10616184
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 10616184
		reg[4] 6
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 10616184
		reg[4] 6
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 10616184
		reg[4] 5
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 10616184
		reg[4] 5
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 10616184
		reg[4] 5
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 10616184
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 10616184
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 21232368
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 21232368
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 21232368
		reg[4] -1
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 21232368
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 10632192
		reg[3] 21232368
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 21232368
		reg[4] -1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 21232368
		reg[4] 5
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 21232368
		reg[4] 5
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 21232368
		reg[4] 4
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 21232368
		reg[4] 4
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 21232368
		reg[4] 4
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 21232368
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 21232368
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 42464736
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 42464736
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 42464736
		reg[4] -16385
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 42464736
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 42464736
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	1	3	3

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 21264384
		reg[3] 42497502
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 42497502
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 42497502
		reg[4] 4
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 42497502
		reg[4] 4
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 42497502
		reg[4] 3
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 42497502
		reg[4] 3
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 42497502
		reg[4] 3
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 42497502
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 42497502
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 84995004
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 84995004
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 84995004
		reg[4] -16385
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 84995004
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 84995004
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	1	3	3

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 42528768
		reg[3] 85027770
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 85027770
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 85027770
		reg[4] 3
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 85027770
		reg[4] 3
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 85027770
		reg[4] 2
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 85027770
		reg[4] 2
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 85027770
		reg[4] 2
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 85027770
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 85027770
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 170055540
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 170055540
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 170055540
		reg[4] -16385
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 170055540
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 170055540
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	1	3	3

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 85057536
		reg[3] 170088306
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 170088306
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 170088306
		reg[4] 2
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 170088306
		reg[4] 2
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 170088306
		reg[4] 1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 170088306
		reg[4] 1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 170088306
		reg[4] 1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	33

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 170088306
		reg[4] 8
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

jalr	4	6

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 170088306
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

add	3	3	3

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 340176612
		reg[4] 8
		reg[5] 65534
		reg[6] 22
		reg[7] 0
end state

lw	0	6	29

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 340176612
		reg[4] 8
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

nand	2	6	4

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 340176612
		reg[4] -16385
		reg[5] 65534
		reg[6] 16384
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 340176612
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	6	1

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 340176612
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	1	3	3

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 170115072
		reg[3] 340209378
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	2	2	2

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 340230144
		reg[3] 340209378
		reg[4] -16385
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	4	5

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 340230144
		reg[3] 340209378
		reg[4] 1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	31

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 340230144
		reg[3] 340209378
		reg[4] 1
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

add	6	4	4

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 340230144
		reg[3] 340209378
		reg[4] 0
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

sw	0	4	5

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 340230144
		reg[3] 340209378
		reg[4] 0
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

beq	4	0	2

@@@
state:
	pc 22
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 340230144
		reg[3] 340209378
		reg[4] 0
		reg[5] 65534
		reg[6] -1
		reg[7] 0
end state

lw	0	6	30

@@@
state:
	pc 23
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 340230144
		reg[3] 340209378
		reg[4] 0
		reg[5] 65534
		reg[6] 1
		reg[7] 0
end state

add	6	5	5

@@@
state:
	pc 24
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 340230144
		reg[3] 340209378
		reg[4] 0
		reg[5] 65535
		reg[6] 1
		reg[7] 0
end state

halt

@@@
state:
	pc 25
	registers: 
		reg[0] 0
		reg[1] 32766
		reg[2] 340230144
		reg[3] 340209378
		reg[4] 0
		reg[5] 65535
		reg[6] 1
		reg[7] 0
end state

totalIns 211

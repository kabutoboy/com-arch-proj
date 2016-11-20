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
	stack: 
end state

lw	0	5	34

@@@
state:
	pc 1
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] 0
		reg[7] 0
	stack: 
end state

lw	0	1	35

@@@
state:
	pc 2
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] 0
		reg[7] 0
	stack: 
end state

beq	0	1	25

@@@
state:
	pc 3
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] 0
		reg[7] 0
	stack: 
end state

lw	0	6	36

@@@
state:
	pc 4
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] 1
		reg[7] 0
	stack: 
end state

beq	6	1	25

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] 1
		reg[7] 0
	stack: 
end state

lw	0	6	38

@@@
state:
	pc 6
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] -1
		reg[7] 0
	stack: 
end state

nand	6	1	2

@@@
state:
	pc 7
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] -3
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] -1
		reg[7] 0
	stack: 
end state

add	2	5	5

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] -3
		reg[3] 0
		reg[4] 0
		reg[5] 65533
		reg[6] -1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 0
		mem[65535] 0
end state

sw	5	0	0

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] -3
		reg[3] 0
		reg[4] 0
		reg[5] 65533
		reg[6] -1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 0
		mem[65535] 0
end state

lw	0	6	36

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] -3
		reg[3] 0
		reg[4] 0
		reg[5] 65533
		reg[6] 1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 0
		mem[65535] 0
end state

sw	5	6	1

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] -3
		reg[3] 0
		reg[4] 0
		reg[5] 65533
		reg[6] 1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

lw	0	6	37

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] -3
		reg[3] 0
		reg[4] 0
		reg[5] 65533
		reg[6] 2
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

add	0	6	4

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] -3
		reg[3] 0
		reg[4] 2
		reg[5] 65533
		reg[6] 2
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

lw	0	6	36

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] -3
		reg[3] 0
		reg[4] 2
		reg[5] 65533
		reg[6] 1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

add	6	1	1

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] -3
		reg[3] 0
		reg[4] 2
		reg[5] 65533
		reg[6] 1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

beq	4	1	16

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] -3
		reg[3] 0
		reg[4] 2
		reg[5] 65533
		reg[6] 1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

lw	0	6	38

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] -3
		reg[3] 0
		reg[4] 2
		reg[5] 65533
		reg[6] -1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

add	4	6	2

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 1
		reg[3] 0
		reg[4] 2
		reg[5] 65533
		reg[6] -1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

add	5	2	2

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65534
		reg[3] 0
		reg[4] 2
		reg[5] 65533
		reg[6] -1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

lw	2	3	0

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65534
		reg[3] 1
		reg[4] 2
		reg[5] 65533
		reg[6] -1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

add	6	2	2

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65533
		reg[3] 1
		reg[4] 2
		reg[5] 65533
		reg[6] -1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

lw	2	6	0

@@@
state:
	pc 22
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65533
		reg[3] 1
		reg[4] 2
		reg[5] 65533
		reg[6] 0
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

add	6	3	3

@@@
state:
	pc 23
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65533
		reg[3] 1
		reg[4] 2
		reg[5] 65533
		reg[6] 0
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

add	5	4	2

@@@
state:
	pc 24
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65535
		reg[3] 1
		reg[4] 2
		reg[5] 65533
		reg[6] 0
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 0
end state

sw	2	3	0

@@@
state:
	pc 25
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65535
		reg[3] 1
		reg[4] 2
		reg[5] 65533
		reg[6] 0
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 1
end state

lw	0	6	36

@@@
state:
	pc 26
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65535
		reg[3] 1
		reg[4] 2
		reg[5] 65533
		reg[6] 1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 1
end state

add	6	4	4

@@@
state:
	pc 27
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65535
		reg[3] 1
		reg[4] 3
		reg[5] 65533
		reg[6] 1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 1
end state

beq	0	0	-13

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65535
		reg[3] 1
		reg[4] 3
		reg[5] 65533
		reg[6] 1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 1
end state

beq	4	1	16

@@@
state:
	pc 32
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65535
		reg[3] 1
		reg[4] 3
		reg[5] 65533
		reg[6] 1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 1
end state

halt

@@@
state:
	pc 33
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 65535
		reg[3] 1
		reg[4] 3
		reg[5] 65533
		reg[6] 1
		reg[7] 0
	stack: 
		mem[65533] 0
		mem[65534] 1
		mem[65535] 1
end state

totalIns 30

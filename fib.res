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

lw	0	5	43

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

lw	0	1	36

@@@
state:
	pc 2
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] 0
		reg[7] 0
	stack: 
end state

lw	0	6	44

@@@
state:
	pc 3
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] 5
		reg[7] 0
	stack: 
end state

jalr	6	7

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] 5
		reg[7] 4
	stack: 
end state

beq	1	0	26

@@@
state:
	pc 6
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65536
		reg[6] 5
		reg[7] 4
	stack: 
end state

lw	0	4	37

@@@
state:
	pc 7
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65536
		reg[6] 5
		reg[7] 4
	stack: 
end state

beq	1	4	26

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65536
		reg[6] 5
		reg[7] 4
	stack: 
end state

lw	0	6	42

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65536
		reg[6] -3
		reg[7] 4
	stack: 
end state

add	6	5	5

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] -3
		reg[7] 4
	stack: 
		mem[65533] 0
		mem[65534] 0
		mem[65535] 0
end state

sw	5	7	0

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] -3
		reg[7] 4
	stack: 
		mem[65533] 4
		mem[65534] 0
		mem[65535] 0
end state

sw	5	1	1

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] -3
		reg[7] 4
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	0	0	3

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] -3
		reg[7] 4
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

sw	5	3	2

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] -3
		reg[7] 4
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	40

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] -1
		reg[7] 4
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	6	1	1

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] -1
		reg[7] 4
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	44

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] 5
		reg[7] 4
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

jalr	6	7

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

beq	1	0	26

@@@
state:
	pc 6
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	4	37

@@@
state:
	pc 7
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

beq	1	4	26

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	42

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65533
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	6	5	5

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65530] 0
		mem[65531] 0
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

sw	5	7	0

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 0
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

sw	5	1	1

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	0	0	3

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

sw	5	3	2

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	40

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -1
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	6	1	1

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -1
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	44

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

jalr	6	7

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

beq	1	0	26

@@@
state:
	pc 6
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	4	37

@@@
state:
	pc 7
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

beq	1	4	26

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	42

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	6	5	5

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65527] 0
		mem[65528] 0
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

sw	5	7	0

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 0
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

sw	5	1	1

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	0	0	3

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

sw	5	3	2

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] -3
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	40

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] -1
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	6	1	1

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] -1
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	44

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

jalr	6	7

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

beq	1	0	26

@@@
state:
	pc 6
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	4	37

@@@
state:
	pc 7
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

beq	1	4	26

@@@
state:
	pc 34
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	0	4	3

@@@
state:
	pc 35
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65527
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

jalr	7	6

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65527
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	5	4	2

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65527
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	4	3	3

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65527
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 0
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

sw	5	3	2

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65527
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	5	1	1

@@@
state:
	pc 22
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65527
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	41

@@@
state:
	pc 23
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65527
		reg[6] -2
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	6	1	1

@@@
state:
	pc 24
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65527
		reg[6] -2
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	44

@@@
state:
	pc 25
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65527
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

jalr	6	7

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65527
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

beq	1	0	26

@@@
state:
	pc 32
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65527
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	0	0	3

@@@
state:
	pc 33
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65527
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

jalr	7	6

@@@
state:
	pc 26
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65527
		reg[6] 34
		reg[7] 26
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	5	4	2

@@@
state:
	pc 27
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65527
		reg[6] 34
		reg[7] 26
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	4	3	3

@@@
state:
	pc 28
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65527
		reg[6] 34
		reg[7] 26
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	5	7	0

@@@
state:
	pc 29
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65527
		reg[6] 34
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	39

@@@
state:
	pc 30
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65527
		reg[6] 3
		reg[7] 18
	stack: 
		mem[65527] 18
		mem[65528] 2
		mem[65529] 1
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	6	5	5

@@@
state:
	pc 31
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 3
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

jalr	7	6

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 32
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	5	4	2

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 32
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	4	3	3

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 32
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

sw	5	3	2

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 32
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	5	1	1

@@@
state:
	pc 22
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 32
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	41

@@@
state:
	pc 23
	registers: 
		reg[0] 0
		reg[1] 3
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] -2
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	6	1	1

@@@
state:
	pc 24
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] -2
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	44

@@@
state:
	pc 25
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

jalr	6	7

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

beq	1	0	26

@@@
state:
	pc 6
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	4	37

@@@
state:
	pc 7
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

beq	1	4	26

@@@
state:
	pc 34
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	0	4	3

@@@
state:
	pc 35
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

jalr	7	6

@@@
state:
	pc 26
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 36
		reg[7] 26
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	5	4	2

@@@
state:
	pc 27
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 36
		reg[7] 26
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	4	3	3

@@@
state:
	pc 28
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65530
		reg[6] 36
		reg[7] 26
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	5	7	0

@@@
state:
	pc 29
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65530
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	0	6	39

@@@
state:
	pc 30
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65530
		reg[6] 3
		reg[7] 18
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	6	5	5

@@@
state:
	pc 31
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65533
		reg[6] 3
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

jalr	7	6

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65533
		reg[6] 32
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

lw	5	4	2

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 2
		reg[4] 0
		reg[5] 65533
		reg[6] 32
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

add	4	3	3

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 2
		reg[4] 0
		reg[5] 65533
		reg[6] 32
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 0
end state

sw	5	3	2

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 2
		reg[4] 0
		reg[5] 65533
		reg[6] 32
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	5	1	1

@@@
state:
	pc 22
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 2
		reg[4] 0
		reg[5] 65533
		reg[6] 32
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	6	41

@@@
state:
	pc 23
	registers: 
		reg[0] 0
		reg[1] 4
		reg[2] 0
		reg[3] 2
		reg[4] 0
		reg[5] 65533
		reg[6] -2
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	6	1	1

@@@
state:
	pc 24
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 2
		reg[4] 0
		reg[5] 65533
		reg[6] -2
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	6	44

@@@
state:
	pc 25
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 2
		reg[4] 0
		reg[5] 65533
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

jalr	6	7

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 2
		reg[4] 0
		reg[5] 65533
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

beq	1	0	26

@@@
state:
	pc 6
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 2
		reg[4] 0
		reg[5] 65533
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	4	37

@@@
state:
	pc 7
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65533
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

beq	1	4	26

@@@
state:
	pc 8
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65533
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	6	42

@@@
state:
	pc 9
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65533
		reg[6] -3
		reg[7] 26
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	6	5	5

@@@
state:
	pc 10
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 26
	stack: 
		mem[65530] 18
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

sw	5	7	0

@@@
state:
	pc 11
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 3
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

sw	5	1	1

@@@
state:
	pc 12
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 2
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	0	0	3

@@@
state:
	pc 13
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

sw	5	3	2

@@@
state:
	pc 14
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -3
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	6	40

@@@
state:
	pc 15
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -1
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	6	1	1

@@@
state:
	pc 16
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] -1
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	6	44

@@@
state:
	pc 17
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

jalr	6	7

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

beq	1	0	26

@@@
state:
	pc 6
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	4	37

@@@
state:
	pc 7
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

beq	1	4	26

@@@
state:
	pc 34
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	0	4	3

@@@
state:
	pc 35
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

jalr	7	6

@@@
state:
	pc 18
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	5	4	2

@@@
state:
	pc 19
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	4	3	3

@@@
state:
	pc 20
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 0
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

sw	5	3	2

@@@
state:
	pc 21
	registers: 
		reg[0] 0
		reg[1] 1
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	5	1	1

@@@
state:
	pc 22
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 36
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	6	41

@@@
state:
	pc 23
	registers: 
		reg[0] 0
		reg[1] 2
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] -2
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	6	1	1

@@@
state:
	pc 24
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] -2
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	6	44

@@@
state:
	pc 25
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 5
		reg[7] 18
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

jalr	6	7

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

beq	1	0	26

@@@
state:
	pc 32
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 0
		reg[5] 65530
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	0	0	3

@@@
state:
	pc 33
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65530
		reg[6] 5
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

jalr	7	6

@@@
state:
	pc 26
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 0
		reg[4] 0
		reg[5] 65530
		reg[6] 34
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	5	4	2

@@@
state:
	pc 27
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 0
		reg[4] 1
		reg[5] 65530
		reg[6] 34
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	4	3	3

@@@
state:
	pc 28
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 34
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	5	7	0

@@@
state:
	pc 29
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 34
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	6	39

@@@
state:
	pc 30
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65530
		reg[6] 3
		reg[7] 26
	stack: 
		mem[65530] 26
		mem[65531] 2
		mem[65532] 1
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	6	5	5

@@@
state:
	pc 31
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65533
		reg[6] 3
		reg[7] 26
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

jalr	7	6

@@@
state:
	pc 26
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 1
		reg[5] 65533
		reg[6] 32
		reg[7] 26
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	5	4	2

@@@
state:
	pc 27
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 1
		reg[4] 2
		reg[5] 65533
		reg[6] 32
		reg[7] 26
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	4	3	3

@@@
state:
	pc 28
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 3
		reg[4] 2
		reg[5] 65533
		reg[6] 32
		reg[7] 26
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	5	7	0

@@@
state:
	pc 29
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 3
		reg[4] 2
		reg[5] 65533
		reg[6] 32
		reg[7] 4
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

lw	0	6	39

@@@
state:
	pc 30
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 3
		reg[4] 2
		reg[5] 65533
		reg[6] 3
		reg[7] 4
	stack: 
		mem[65533] 4
		mem[65534] 4
		mem[65535] 2
end state

add	6	5	5

@@@
state:
	pc 31
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 3
		reg[4] 2
		reg[5] 65536
		reg[6] 3
		reg[7] 4
	stack: 
end state

jalr	7	6

@@@
state:
	pc 4
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 3
		reg[4] 2
		reg[5] 65536
		reg[6] 32
		reg[7] 4
	stack: 
end state

halt

@@@
state:
	pc 5
	registers: 
		reg[0] 0
		reg[1] 0
		reg[2] 0
		reg[3] 3
		reg[4] 2
		reg[5] 65536
		reg[6] 32
		reg[7] 4
	stack: 
end state

totalIns 134

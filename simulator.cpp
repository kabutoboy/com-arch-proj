#include <iostream>
#include <vector>

using namespace std;

int memSize = 65536;
int regSize = 8;
int pc = 0;

vector<int32_t> reg(regSize, 0);
vector<int32_t> mem(memSize, 0);
vector<int32_t> ins;

int32_t maskOpcode = 0b111 << 22;
int32_t maskRegA = 0b111 << 19;
int32_t maskRegB = 0b111 << 16;
int32_t maskDestReg = 0b111;
int32_t maskOffsetField = 0b1111111111111111;

int8_t getOpcode(int32_t i) {
    return (i & maskOpcode) >> 22;
}

int8_t getRegA(int32_t i) {
    return (i & maskRegA) >> 19;
}

int8_t getRegB(int32_t i) {
    return (i & maskRegB) >> 16;
}

int8_t getDestReg(int32_t i) {
    return (i & maskDestReg);
}

int16_t getOffsetField(int32_t i) {
    return (i & maskOffsetField);
}

void getInstructions() {
    ins.clear();
    int32_t i;
    int j = 0;
    while (cin >> i) {
	ins.push_back(i);
	mem[j] = i;
	j++;
    }
}

void printState() {
    printf("@@@\n");
    printf("state:\n");
    printf("\tpc %d\n", pc);
    //printf("\tmem: \n");
    //for (int j = 0; j < ins.size(); j++) {
    //    printf("\t\tmem[%d] %d\n", j, mem[j]);
    //}
    printf("\tregisters: \n");
    for (int j = 0; j < regSize; j++) {
	printf("\t\treg[%d] %d\n", j, reg[j]);
    }
    printf("end state\n");
}

int main() {
    getInstructions();

    /*
     * $0 zero
     * $1 n input to function
     * $2 r input to function
     * $3 return value
     * $4 local variable
     * $5 stack pointer
     * $6 temp
     * $7 return addr
     */
    //reg[5] = memSize-1;
    int totalIns = 0;
    pc = 0;
    bool halt = false;
    int32_t i;
    while (!halt) {
	totalIns += 1;
	i = ins[pc];
	printState();
	pc += 1;
	int8_t opcode = getOpcode(i),
	       regA = getRegA(i),
	       regB = getRegB(i),
	       destReg = getDestReg(i);
	int32_t offsetField = getOffsetField(i);
	switch (opcode) {
	    case 0:
		// add (r-type)
		printf("add\t%d\t%d\t%d\n", regA, regB, destReg);
		reg[destReg] = reg[regA] + reg[regB];
		break;
	    case 1:
		// nand (r-type)
		printf("nand\t%d\t%d\t%d\n", regA, regB, destReg);
		reg[destReg] = ~(reg[regA] & reg[regB]);
		break;
	    case 2:
		// lw (i-type)
		printf("lw\t%d\t%d\t%d\n", regA, regB, offsetField);
		reg[regB] = mem[reg[regA] + offsetField];
		break;
	    case 3:
		// sw (i-type)
		printf("sw\t%d\t%d\t%d\n", regA, regB, offsetField);
		mem[reg[regA] + offsetField] = reg[regB];
		break;
	    case 4:
		// beq (i-type)
		printf("beq\t%d\t%d\t%d\n", regA, regB, offsetField);
		if (reg[regA] == reg[regB]) {
		    pc += offsetField;
		}
		break;
	    case 5:
		// jalr (j-type)
		printf("jalr\t%d\t%d\n", regA, regB);
		reg[regB] = pc;
		pc = reg[regA];
		break;
	    case 6:
		// halt (o-type)
		printf("halt\n");
		halt = true;
		break;
	    case 7:
		// noop (o-type)
		printf("noop\n");
		break;
	    default:
		
		break;
	}
	if (halt) {
	    printState();
	    break;
	}
    }
    printf("totalIns %d\n", totalIns);
}

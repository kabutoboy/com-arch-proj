#include <iostream>
#include <vector>

using namespace std;

int memSize = 65536;
int regSize = 8;
int pc = 0;

vector<int32_t> reg(regSize, 0);
vector<int32_t> mem(memSize, 0);
vector<int32_t> ins;

int32_t maskOpcode      = 0b111 << 22;
int32_t maskRegA        = 0b111 << 19;
int32_t maskRegB        = 0b111 << 16;
int32_t maskDestReg     = 0b111;
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
    //
    //for (int j = 0; j < ins.size(); j++) {
    //
    //    printf("\t\tmem[%d] %d\n", j, mem[j]);
    //
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

    pc = 0;
    int32_t i;
    bool halt = false;
    int totalIns = 0;

    while (!halt) {

        totalIns += 1;
        i = ins[pc];

        printState();

        pc += 1;

        int8_t opcode   = getOpcode(i),
               a        = getRegA(i),
               b        = getRegB(i),
               dest     = getDestReg(i);
        int32_t offset  = getOffsetField(i);

        printf("\n");
        
        switch (opcode) {

            // add (r-type)
            case 0:

                printf("add\t%d\t%d\t%d\n", a, b, dest);

                reg[dest] = reg[a] + reg[b];

                break;

            // nand (r-type)
            case 1:

                printf("nand\t%d\t%d\t%d\n", a, b, dest);

                reg[dest] = ~(reg[a] & reg[b]);

                break;

            // lw (i-type)
            case 2:

                printf("lw\t%d\t%d\t%d\n", a, b, offset);

                reg[b] = mem[reg[a] + offset];

                break;

            // sw (i-type)
            case 3:

                printf("sw\t%d\t%d\t%d\n", a, b, offset);

                mem[reg[a] + offset] = reg[b];

                break;

            // beq (i-type)
            case 4:

                printf("beq\t%d\t%d\t%d\n", a, b, offset);

                if (reg[a] == reg[b]) {
                    pc += offset;
                }

                break;

            // jalr (j-type)
            case 5:

                printf("jalr\t%d\t%d\n", a, b);

                reg[b] = pc;
                pc = reg[a];

                break;

            // halt (o-type)
            case 6:

                printf("halt\n");

                halt = true;

                break;

            // noop (o-type)
            case 7:

                printf("noop\n");

                break;

            // this should not happen
            default:

                printf("unrecognized opcode %d\n", opcode);
                
                break;

        }

        printf("\n");

        if (halt) {

            printState();

            break;

        }
    }

    printf("\n");
    printf("totalIns %d\n", totalIns);

    return 0;

}

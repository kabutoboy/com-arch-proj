#include <iostream>
#include <cstring>
#include <vector>

using namespace std;

int memSize = 65536;
int regSize = 8;
int pc = 0;
int outputMode = 0;

bool verbose = false;
string codePath;
string outPath;

vector<int32_t> reg(regSize, 0);
vector<int32_t> mem(memSize, 0);
vector<int32_t> ins;

int32_t maskOpcode      = 0b111 << 22;
int32_t maskRegA        = 0b111 << 19;
int32_t maskRegB        = 0b111 << 16;
int32_t maskDestReg     = 0b111;
int32_t maskOffsetField = 0b1111111111111111;

string toBin(int n) {
	string ret = "";
	for (int i = 31; i >= 0; i--) {
		int j = 1 << i;
		if (n & j) {
			ret += "1";
		} else {
			ret += "0";
		}
	}
	return ret;
}

uint8_t getOpcode(int32_t i) {

    return (i & maskOpcode) >> 22;

}

uint8_t getRegA(int32_t i) {

    return (i & maskRegA) >> 19;

}

uint8_t getRegB(int32_t i) {

    return (i & maskRegB) >> 16;

}

uint8_t getDestReg(int32_t i) {

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

void printIns(int32_t i, bool force = false) {

    if (!force && !verbose) {
        return;
    }

    uint8_t opcode   = getOpcode(i),
           a        = getRegA(i),
           b        = getRegB(i),
           dest     = getDestReg(i);
    int32_t offset  = getOffsetField(i);

    printf("\n");
    
    switch (opcode) {

        // add (r-type)
        case 0:
            printf("add\t%d\t%d\t%d\n", a, b, dest);
            break;

        // nand (r-type)
        case 1:
            printf("nand\t%d\t%d\t%d\n", a, b, dest);
            break;

        // lw (i-type)
        case 2:
            printf("lw\t%d\t%d\t%d\n", a, b, offset);
            break;

        // sw (i-type)
        case 3:
            printf("sw\t%d\t%d\t%d\n", a, b, offset);
            break;

        // beq (i-type)
        case 4:
            printf("beq\t%d\t%d\t%d\n", a, b, offset);
            break;

        // jalr (j-type)
        case 5:
            printf("jalr\t%d\t%d\n", a, b);
            break;

        // halt (o-type)
        case 6:
            printf("halt\n");
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

}

void printState(bool force = false) {

    if (!force && !verbose) {
        return;
    }

    printf("@@@\n");
    printf("state:\n");
    printf("\tpc %d\n", pc);

    //printf("\tmem: \n");
    //
    //for (int j = 0; j < ins.size(); j++) {
    //    printf("\t\tmem[%d] %d\n", j, mem[j]);
    //}

    printf("\tregisters: \n");

    for (int j = 0; j < regSize; j++) {
	switch (outputMode) {

	    case 0:
		printf("\t\treg[%d] %d\n", j, reg[j]);
		break;
	    case 1:
		printf("\t\treg[%d] %s\n", j, toBin(reg[j]).c_str());
		break;
	    case 2:
		printf("\t\treg[%d] 0x%08x\n", j, reg[j]);
		break;
	
	}
    }

    printf("\tstack: \n");

    for (int j = reg[5]; j < memSize; j++) {
        if (pc == 0) {
            break;
        }
	switch (outputMode) {

	    case 0:
		printf("\t\tmem[%d] %d\n", j, mem[j]);
		break;
	    case 1:
		printf("\t\tmem[%d] %s\n", j, toBin(mem[j]).c_str());
		break;
	    case 2:
		printf("\t\tmem[%d] 0x%08x\n", j, mem[j]);
		break;
	
	}
    }

    printf("end state\n");

}

int main(int argc, char *argv[]) {

    if (argc > 1) {

        int pathCount = 0;

        for (int i = 1; i < argc; i++) {
            char *inp = argv[i];
            // flag
            if (inp[0] == '-') {
                // verbose
                if (strchr(inp, 'v') != NULL) {
                    verbose = true;
                }
		// binary
		if (strchr(inp, 'b') != NULL) {
		    outputMode = 1;
		}
		// hex
		if (strchr(inp, 'h') != NULL) {
		    outputMode = 2;
		}

            }
            // file
            else {
                switch (pathCount) {
                    case 0:
                        codePath = inp;
                        pathCount++;
                        break;
                    case 1:
                        outPath = inp;
                        pathCount++;
                        break;
                    default:
                        break;
                }
            }
        }

    }

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

        i = ins[pc];

        printState();

        pc += 1;
        totalIns += 1;

        uint8_t opcode   = getOpcode(i),
               a        = getRegA(i),
               b        = getRegB(i),
               dest     = getDestReg(i);
        int32_t offset  = getOffsetField(i);

        printIns(i);
        
        switch (opcode) {

            // add (r-type)
            case 0:
                reg[dest] = reg[a] + reg[b];
                break;

            // nand (r-type)
            case 1:
                reg[dest] = ~(reg[a] & reg[b]);
                break;

            // lw (i-type)
            case 2:
                reg[b] = mem[reg[a] + offset];
                break;

            // sw (i-type)
            case 3:
                mem[reg[a] + offset] = reg[b];
                break;

            // beq (i-type)
            case 4:
                if (reg[a] == reg[b]) {
                    pc += offset;
                }
                break;

            // jalr (j-type)
            case 5:
                reg[b] = pc;
                pc = reg[a];
                break;

            // halt (o-type)
            case 6:
                halt = true;
                break;

            // noop (o-type)
            case 7:
                break;

            // this should not happen
            default:
                break;

        }

        if (halt) {
            printState(true);
            break;

        }
    }

    printf("\n");
    printf("totalIns %d\n", totalIns);

    return 0;

}

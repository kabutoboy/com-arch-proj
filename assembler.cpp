#include <cstdio>
#include <iostream>
#include <map>
#include <string>
#include <vector>

using namespace std;

map<string, int32_t> labels;
map<string, int32_t> fills;
map<string, int8_t> opcodes;
vector<string> assembly;
vector<int32_t> machineCode;
string delim = "\t";

// loose logic
bool isNumber(string s) {
	return !s.empty() && s.find_first_not_of("-0123456789") == string::npos;
}

void parseLabels() {
	for (int32_t lineAddress = 0; lineAddress < assembly.size(); lineAddress++) {
		string line = assembly.at(lineAddress);
		size_t found;
		size_t lookingAt = 0;
		found = line.find(delim);
		if (found == string::npos) {
			found = line.length();
		}
		if (found > lookingAt) {
			size_t len = found - lookingAt;
			string field = line.substr(lookingAt, len);
			labels[field] = lineAddress;
		}
	}
}

void parseAll() {
	machineCode.clear();
	for (int32_t lineAddress = 0; lineAddress < assembly.size(); lineAddress++) {
		if (lineAddress > 0) {
			cout << "----------------" << endl;
		}
		cout << "parsing line " << lineAddress << endl;
		int32_t code = 0;
		string line = assembly.at(lineAddress);
		size_t found;
		size_t lookingAt = 0;
		// label
		found = line.find(delim);
		if (found == string::npos) {
			found = line.length();
		}
		string label;
		if (found > lookingAt) {
			size_t len = found - lookingAt;
			string field = line.substr(lookingAt, len);
			label = field;
			cout << "label is " << label << endl;
		}
		// instruction
		if (found >= line.length()) {
			continue;
		}
		lookingAt = found + 1;
		found = line.find(delim, lookingAt);
		if (found == string::npos) {
			found = line.length();
		}
		string instruction;
		int8_t opcode;
		if (found > lookingAt) {
			size_t len = found - lookingAt;
			string field = line.substr(lookingAt, len);
			instruction = field;
			cout << "instruction is " << instruction << endl;
			if (instruction != ".fill") {
				opcode = opcodes[instruction];
				code <<= 3;
				code += opcode;
				switch (opcode) {
					case 6:
					case 7:
						code <<= 22;
						machineCode.push_back(code);
						continue;
					default:
						break;
				}
			}
		}
		// regA
		if (found >= line.length()) {
			continue;
		}
		lookingAt = found + 1;
		found = line.find(delim, lookingAt);
		if (found == string::npos) {
			found = line.length();
		}
		int8_t regA;
		if (found > lookingAt) {
			size_t len = found - lookingAt;
			string field = line.substr(lookingAt, len);
			if (instruction == ".fill") {
				cout << "fillVal is " << field << endl;
				int32_t fillVal;
				if (isNumber(field)) {
					fillVal = stoi(field);
				} else {
					fillVal = labels[field];
				}
				machineCode.push_back(fillVal);
				continue;
			}
			cout << "regA is " << field << endl;
			regA = stoi(field);
			code <<= 3;
			code += regA;
		}
		// regB
		if (found >= line.length()) {
			continue;
		}
		lookingAt = found + 1;
		found = line.find(delim, lookingAt);
		if (found == string::npos) {
			found = line.length();
		}
		int8_t regB;
		if (found > lookingAt) {
			size_t len = found - lookingAt;
			string field = line.substr(lookingAt, len);
			cout << "regB is " << field << endl;
			//if (isNumber(field)) {
			//	labels[label] = stoi(field);
			//} else {
			//	labels[label] = labels[field];
			//}
			regB = stoi(field);
			code <<= 3;
			code += regB;
		}
		// field3
		if (found >= line.length()) {
			continue;
		}
		lookingAt = found + 1;
		found = line.find(delim, lookingAt);
		if (found == string::npos) {
			found = line.length();
		}
		if (found > lookingAt) {
			size_t len = found - lookingAt;
			string field = line.substr(lookingAt, len);
			code <<= 16;
			int8_t destReg;
			int16_t offsetField;
			if (isNumber(field)) {
				destReg = stoi(field);
				offsetField = stoi(field);
			} else {
				offsetField = labels[field];
				if (opcode == 4) {
					offsetField -= (int16_t)lineAddress + 1;
				}
			}
			switch (opcode) {
				case 0:
				case 1:
					cout << "destReg is " << field << "(" << destReg << ")" << endl;
					code += destReg;
					break;
				case 2:
				case 3:
				case 4:
					cout << "offsetField is " << field << "(" << offsetField << ")" << endl;
					code += (int32_t)offsetField & (int32_t)((1 << 16) - 1);
					break;
				default:
					break;
			}
		}
		machineCode.push_back(code);
	}
}
int main() {
	opcodes["add"]  = 0;
	opcodes["nand"] = 1;
	opcodes["lw"]   = 2;
	opcodes["sw"]   = 3;
	opcodes["beq"]  = 4;
	opcodes["jalr"] = 5;
	opcodes["halt"] = 6;
	opcodes["noop"] = 7;

	string line;
	while(getline(cin, line)) {
		assembly.push_back(line);
	}
	//for (int32_t lineAddress = 0; lineAddress < assembly.size(); lineAddress++) {
	//	string line = assembly.at(lineAddress);
	//	size_t found;
	//	size_t lookingAt = 0;
	//	string delim = "\t";
	//	for (int col = 0; col < 6; col++) {
	//		found = line.find(delim, lookingAt);
	//		if (found == string::npos) {
	//			break;
	//		}
	//		if (found > lookingAt) {
	//			size_t len = found - lookingAt;
	//			string field = line.substr(lookingAt, len);
	//			switch (col) {
	//				case 0: // label
	//					labels[field] = lineAddress;
	//					break;
	//				case 1: // instruction

	//					break;
	//				case 2: // regA

	//					break;
	//				case 3: // regB

	//					break;
	//				case 4: // destReg/offset

	//					break;
	//				case 5: // comment

	//					break;
	//				default:

	//					break;
	//			}
	//			lookingAt = found + 1;
	//		}
	//	}
	//}
	cout << "parseLabels . . ." << endl;
	parseLabels();
	for (auto p: labels) {
		cout << "label " << p.first << " has value " << p.second << endl;
	}
	cout << "parseAll . . ." << endl;
	parseAll();
	cout << "done . . ." << endl;
	for (int i = 0; i < machineCode.size(); i++) {
		int32_t code = machineCode[i];
		printf("(address %d) %d (0x%x)\n", i, code, code);
	}
	return 0;
}

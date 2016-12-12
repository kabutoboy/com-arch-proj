#include <cstdio>
#include <iostream>
#include <map>
#include <string>
#include <vector>

using namespace std;

map<string, int32_t> labels;
map<string, int8_t> opcodes;
vector<string> assembly;
vector<int32_t> machineCode;
string delim = "\t";
//bool verbose = false;

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

// loose logic
bool isNumber(string s) {
    //cout << s << endl;
    //for (int i = 0; i < s.length(); i++) {
    //    cout << (int)s[i] << " ";
    //}
    //cout << endl;
    return !s.empty() && s.find_first_not_of("-0123456789") == string::npos;
}

void parseLabels() {
	for (int32_t lineAddress = 0; lineAddress < assembly.size(); lineAddress++) {
		string line = assembly.at(lineAddress);
		size_t foundAt;
		size_t lookingAt = 0;
		foundAt = line.find(delim);
		if (foundAt == string::npos) {
			foundAt = line.length();
		}
		if (foundAt > lookingAt) {
			size_t len = foundAt - lookingAt;
			string field = line.substr(lookingAt, len);
			labels[field] = lineAddress;
		}
	}
}

void parseAll() {
	machineCode.clear();
	for (int32_t lineAddress = 0; lineAddress < assembly.size(); lineAddress++) {
		if (lineAddress > 0) {
			//cout << "----------------" << endl;
		}
		//cout << "parsing line " << lineAddress << endl;
		int32_t code = 0;
		string line = assembly.at(lineAddress);
		size_t foundAt;
		size_t lookingAt = 0;
		// label
		foundAt = line.find(delim);
		if (foundAt == string::npos) {
			foundAt = line.length();
		}
		string label;
		if (foundAt > lookingAt) {
			size_t len = foundAt - lookingAt;
			string field = line.substr(lookingAt, len);
			label = field;
			//cout << "label is " << label << endl;
		}
		// instruction
		if (foundAt >= line.length()) {
			machineCode.push_back(code);
			continue;
		}
		lookingAt = foundAt + 1;
		foundAt = line.find(delim, lookingAt);
		if (foundAt == string::npos) {
			foundAt = line.length();
		}
		string instruction;
		int8_t opcode;
		if (foundAt > lookingAt) {
			size_t len = foundAt - lookingAt;
			string field = line.substr(lookingAt, len);
			instruction = field;
			//cout << "instruction is " << instruction << endl;
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
		if (foundAt >= line.length()) {
			machineCode.push_back(code);
			continue;
		}
		lookingAt = foundAt + 1;
		foundAt = line.find(delim, lookingAt);
		if (foundAt == string::npos) {
			foundAt = line.length();
		}
		int8_t regA;
		if (foundAt > lookingAt) {
			size_t len = foundAt - lookingAt;
			string field = line.substr(lookingAt, len);
			if (instruction == ".fill") {
				//cout << "fillVal is " << field << endl;
				int32_t fillVal;
				if (isNumber(field)) {
					fillVal = stoi(field);
				} else {
					fillVal = labels[field];
				}
				//cout << "fillVal is number? " << isNumber(field) << endl;
				machineCode.push_back(fillVal);
				continue;
			}
			//cout << "regA is " << field << endl;
			regA = stoi(field);
			code <<= 3;
			code += regA;
		}
		// regB
		if (foundAt >= line.length()) {
			machineCode.push_back(code);
			continue;
		}
		lookingAt = foundAt + 1;
		foundAt = line.find(delim, lookingAt);
		if (foundAt == string::npos) {
			foundAt = line.length();
		}
		int8_t regB;
		if (foundAt > lookingAt) {
			size_t len = foundAt - lookingAt;
			string field = line.substr(lookingAt, len);
			//cout << "regB is " << field << endl;
			//if (isNumber(field)) {
			//	labels[label] = stoi(field);
			//} else {
			//	labels[label] = labels[field];
			//}
			regB = stoi(field);
			code <<= 3;
			code += regB;
			code <<= 16;
		}
		// field3
		if (foundAt >= line.length()) {
			machineCode.push_back(code);
			continue;
		}
		lookingAt = foundAt + 1;
		foundAt = line.find(delim, lookingAt);
		if (foundAt == string::npos) {
			foundAt = line.length();
		}
		if (foundAt > lookingAt) {
			size_t len = foundAt - lookingAt;
			string field = line.substr(lookingAt, len);
			int8_t destReg;
			int16_t offsetField;
			if (isNumber(field)) {
				destReg = stoi(field);
				offsetField = stoi(field);
				//cout << field << "->" << offsetField << endl;
			} else {
				offsetField = labels[field];
                //cout << field << " is not a number / " << offsetField << " / lineAddr is " << lineAddress << " / opcode is " << (int)opcode << endl;
				//cout << field << "->" << offsetField << endl;
				if (opcode == 4) {
					offsetField -= (int16_t)lineAddress + 1;
				}
			}
			switch (opcode) {
				case 0:
				case 1:
					//cout << "destReg is " << field << "(" << destReg << ")" << endl;
					code += destReg;
					break;
				case 2:
				case 3:
				case 4:
					//cout << "offsetField is " << field << "(" << offsetField << ")" << endl;
					code += (int32_t)offsetField & (int32_t)((1 << 16) - 1);
					break;
				default:
					break;
			}
		}
		machineCode.push_back(code);
	}
}

int main(int argc, char *argv[]) {

	//if (argc > 1) {
	//	if (argv[1] == "-v") {
	//		verbose = true;
	//	}
	//}

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

	//cout << "parseLabels . . ." << endl;
	parseLabels();
	for (auto p: labels) {
		//cout << "label " << p.first << " has value " << p.second << endl;
	}

	//cout << "parseAll . . ." << endl;
	parseAll();

	//cout << "done" << endl;

	for (int i = 0; i < machineCode.size(); i++) {
		int32_t code = machineCode[i];
		//printf("(address %d) %d (0x%x) (", i, code, code);
		//cout << toBin(code) <<  endl;
		cout << code << endl;
	}

	return 0;
}

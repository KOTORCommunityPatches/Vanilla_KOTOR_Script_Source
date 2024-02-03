// Prototypes
int sub1();

int sub1() {
	return ((GetGlobalNumber("003EBO_BACKGROUND") != 8) && (GetGlobalNumber("003EBO_BACKGROUND") != 10));
}

int StartingConditional() {
	return ((GetModuleName() == "003EBO") && sub1());
}


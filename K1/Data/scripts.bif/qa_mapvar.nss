// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	AurPostString(stringParam1, intParam2, intParam3, floatParam4);
}

void main() {
	sub1(IntToString(GetGlobalBoolean("K_STAR_MAP_MANAAN")), 10, 10, 4.0);
}


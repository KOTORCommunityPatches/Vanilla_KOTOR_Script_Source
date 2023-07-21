// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int nAlign = GetGoodEvilValue(GetFirstPC());
	sub1(("Align = " + IntToString(nAlign)), 5, 5, 1.0);
}


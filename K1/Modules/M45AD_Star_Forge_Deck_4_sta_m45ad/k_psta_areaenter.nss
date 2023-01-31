// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	if ((GetIsPC(GetEnteringObject()) && (!GetLoadFromSaveGame()))) {
		sub1("Captives left = 8", 10, 10, 5.0);
		SetGlobalNumber("K_END_JEDI_LEFT", 8);
	}
}
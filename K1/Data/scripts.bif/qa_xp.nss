// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int int1 = GetRunScriptVar();
	if (((int1 > 1) && (int1 < 21))) {
		int int3;
		int1;
		while ((int1 > 1)) {
			int3 = (int3 + ((int1 - 1) * 1000));
			(int1--);
		}
		sub1(("XP to be granted = " + IntToString(int3)), 5, 5, 1.0);
		int int4;
		int int5 = 0;
		object oNPC;
		int5;
		while ((int5 <= 2)) {
			oNPC = GetPartyMemberByIndex(int5);
			if (GetIsObjectValid(oNPC)) {
				int4 = (int3 - GetXP(oNPC));
				if ((int4 > 0)) {
					GiveXPToCreature(oNPC, int4);
				}
			}
			(int5++);
		}
	}
}


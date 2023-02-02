// Prototypes
int sub1(string stringParam1);

int sub1(string stringParam1) {
	object object1 = GetObjectByTag(stringParam1, 0);
	if (GetIsObjectValid(object1)) {
		return 1;
	}
	else {
		return 0;
	}
}

void main() {
	if (GetGlobalBoolean("220TEL_Battle_Over")) {
		return;
	}
	int int2 = 0;
	if ((!sub1("gl_turretbl001"))) {
		if ((!sub1("gl_turretbl006"))) {
			if ((!sub1("sithsoldier"))) {
				AurPostString("220 Battle Over", 5, 15, 10.0);
				int2 = 1;
			}
		}
	}
	SetGlobalBoolean("220TEL_Battle_Over", int2);
}

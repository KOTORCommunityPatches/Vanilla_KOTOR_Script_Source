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
		if ((!GetLocalBoolean(OBJECT_SELF, 48))) {
			SetLocalBoolean(OBJECT_SELF, 48, 1);
			object oD_urban = GetObjectByTag("d_urban", 0);
			object oPC = GetFirstPC();
			AssignCommand(GetObjectByTag("d_urban", 0), ActionStartConversation(oPC, "d_urban", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			SetLocked(oD_urban, 0);
			DelayCommand(0.5, AssignCommand(oD_urban, ActionOpenDoor(oD_urban)));
			return;
		}
	}
	int int3 = 0;
	if ((!sub1("gl_turretbl001"))) {
		if ((!sub1("gl_turretbl006"))) {
			if ((!sub1("sithsoldier"))) {
				AurPostString("220 Battle Over", 5, 15, 10.0);
				int3 = 1;
			}
		}
	}
	SetGlobalBoolean("220TEL_Battle_Over", int3);
}
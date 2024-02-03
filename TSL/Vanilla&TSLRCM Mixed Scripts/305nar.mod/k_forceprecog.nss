struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if ((GetGlobalNumber("305NAR_PC_Saved") == 0)) {
		return;
	}
	if ((GetLocalBoolean(OBJECT_SELF, 31) && (GetGlobalNumber("303NAR_Hanharr_Side") == 0))) {
		ExecuteScript("attenter", GetFirstPC(), 0xFFFFFFFF);
	}
	else {
		if ((GetLocalBoolean(OBJECT_SELF, 31) && (GetGlobalNumber("303NAR_Hanharr_Side") == 1))) {
			SwitchPlayerCharacter((-1));
		}
		else {
			SetLocalBoolean(OBJECT_SELF, 31, 1);
			CreateObject(32, "305back", GetLocation(oEntering), 0);
			if ((GetGlobalNumber("303NAR_Hanharr_Side") == 0)) {
				SpawnAvailableNPC(7, Location(Vector((-48.31663), (-87.24736), (-0.46812)), 1.7));
				AssignCommand(OBJECT_SELF, ClearAllActions());
				AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "305mira_a", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			else {
				AssignCommand(OBJECT_SELF, ClearAllActions());
				AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "305preco", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
		}
	}
}


void main() {
	int nParam1 = GetScriptParameter(1);
	object oFake_mira = GetObjectByTag("fake_mira", 0);
	object oPC = GetFirstPC();
	switch (nParam1) {
		case 1:
			SetLocalBoolean(oFake_mira, 41, 1);
			break;
		case 2:
			SetLocalBoolean(oFake_mira, 42, 1);
			break;
		case 3:
			SetLocalBoolean(oFake_mira, 43, 1);
			break;
		case 4:
			SetLocalBoolean(oFake_mira, 44, 1);
			break;
	}
	DelayCommand(0.1, AssignCommand(oFake_mira, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

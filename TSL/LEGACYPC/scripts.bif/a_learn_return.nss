void main() {
	int nParam1 = GetScriptParameter(1);
	object oZezkaiel;
	switch (nParam1) {
		case 1:
			oZezkaiel = GetObjectByTag("kavar", 0);
			break;
		case 2:
			oZezkaiel = GetObjectByTag("npc_vrook", 0);
			break;
		case 3:
			oZezkaiel = GetObjectByTag("zezkaiel", 0);
			break;
	}
	if (GetIsObjectValid(oZezkaiel)) {
		DelayCommand(0.1, AssignCommand(oZezkaiel, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}


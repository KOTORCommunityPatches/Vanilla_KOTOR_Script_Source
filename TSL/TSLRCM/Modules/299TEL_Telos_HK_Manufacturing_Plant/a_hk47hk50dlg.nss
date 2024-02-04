void main() {
	object oPC = GetFirstPC();
	object oSec_terminal50 = GetObjectByTag("sec_terminal50", 0);
	string sParam = GetScriptStringParameter();
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, ActionStartConversation(oSec_terminal50, sParam, 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
		case 1:
			SetLockOrientationInDialog(GetFirstPC(), 1);
			break;
		case 2:
			AssignCommand(GetFirstPC(), ActionPlayAnimation(1, 1.0, 10.0));
			break;
		case 3:
			AssignCommand(GetFirstPC(), ClearAllActions());
			break;
	}
}
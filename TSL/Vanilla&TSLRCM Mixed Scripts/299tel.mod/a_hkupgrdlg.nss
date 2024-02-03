void main() {
	object oPC = GetFirstPC();
	object oSec_terminal51;
	int nParam1 = GetScriptParameter(1);
	AssignCommand(oPC, ClearAllActions());
	switch (nParam1) {
		case 50:
			oSec_terminal51 = GetObjectByTag("sec_terminal50", 0);
			AssignCommand(oPC, ActionStartConversation(oSec_terminal51, "hkupgrade", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
		case 51:
			oSec_terminal51 = GetObjectByTag("sec_terminal51", 0);
			AssignCommand(oPC, ActionStartConversation(oSec_terminal51, "hkupgrade", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
	}
}


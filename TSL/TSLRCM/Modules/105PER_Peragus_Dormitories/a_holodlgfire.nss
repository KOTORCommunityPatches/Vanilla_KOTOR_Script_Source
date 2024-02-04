void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oAdmoff = GetObjectByTag("admoff", 0);
		if (GetIsObjectValid(oAdmoff)) {
			AssignCommand(oAdmoff, ClearAllActions());
			AssignCommand(oAdmoff, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
	if ((nParam1 == 2)) {
		object oMineFor = GetObjectByTag("MineFor", 0);
		if (GetIsObjectValid(oMineFor)) {
			AssignCommand(oMineFor, ClearAllActions());
			AssignCommand(oMineFor, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
	if ((nParam1 == 3)) {
		object oDockOff = GetObjectByTag("DockOff", 0);
		if (GetIsObjectValid(oDockOff)) {
			AssignCommand(oDockOff, ClearAllActions());
			AssignCommand(oDockOff, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
	if ((nParam1 == 4)) {
		object oCoorta = GetObjectByTag("Coorta", 0);
		if (GetIsObjectValid(oCoorta)) {
			AssignCommand(oCoorta, ClearAllActions());
			AssignCommand(oCoorta, ActionStartConversation(GetPCSpeaker(), "Coorta", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
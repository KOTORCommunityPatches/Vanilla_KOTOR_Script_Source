void main() {
	if ((GetGlobalNumber("101PER_Sion_Arrives") == 1)) {
		object oSithspawn = GetObjectByTag("sithspawn", 0);
		if ((GetIsObjectValid(oSithspawn) && (!GetLocalBoolean(oSithspawn, 30)))) {
			object oPC = GetFirstPC();
			AssignCommand(oPC, ClearAllActions());
			ActionStartConversation(oPC, "sithspawn_dlg", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
		}
	}
}


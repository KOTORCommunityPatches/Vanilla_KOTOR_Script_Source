void main() {
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 2)) {
		object oPC = GetFirstPC();
		ClearAllActions();
		AssignCommand(GetObjectByTag("kadron", 0), ActionStartConversation(oPC, "ro_weed", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}


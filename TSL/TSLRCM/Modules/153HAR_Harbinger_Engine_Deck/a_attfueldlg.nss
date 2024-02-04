void main() {
	int nGlobal = GetGlobalNumber("152HAR_Atton_Fuel");
	if ((nGlobal != 0)) {
		return;
	}
	object oAtton = GetObjectByTag("Atton", 0);
	if ((!GetIsObjectValid(oAtton))) {
		return;
	}
	AssignCommand(oAtton, ClearAllActions());
	SetGlobalNumber("152HAR_Atton_Fuel", 1);
	AurPostString("About to call 153Atton", 5, 8, 10.0);
	SetSoloMode(0);
	DelayCommand(0.1, AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "153Atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
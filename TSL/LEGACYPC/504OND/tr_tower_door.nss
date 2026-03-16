void main() {
	object oPC = GetFirstPC();
	SetLocalBoolean(GetObjectByTag("tr_officer_2", 0), 45, 1);
	object oVa_tcpt = GetObjectByTag("vaklu_capt", 0);
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		oVa_tcpt = GetObjectByTag("va_tcpt", 0);
	}
	AssignCommand(oVa_tcpt, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}


void main() {
	object oPC = GetFirstPC();
	object oDs_ro_sold_sp3;
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 0)) {
		return;
	}
	oDs_ro_sold_sp3 = GetObjectByTag("ds_ro_sold_sp3", 0);
	AssignCommand(oDs_ro_sold_sp3, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}


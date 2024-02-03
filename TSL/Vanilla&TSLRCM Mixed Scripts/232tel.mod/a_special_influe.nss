void main() {
	SetGlobalNumber("000_React", 2);
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	if ((!GetIsObjectValid(oBaoDur))) {
		return;
	}
	object oPC = GetFirstPC();
	AssignCommand(oBaoDur, ClearAllActions());
	DelayCommand(1.0, AssignCommand(oBaoDur, ActionStartConversation(oPC, "000react", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}


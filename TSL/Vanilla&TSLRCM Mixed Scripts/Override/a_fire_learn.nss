void main() {
	object oInvisoKreia = GetObjectByTag("InvisoKreia", 0);
	if ((!GetIsObjectValid(oInvisoKreia))) {
		AurPostString("Could not find InvisoKreia for Form Learning cutscene.", 10, 10, 2.0);
		return;
	}
	int nParam1 = GetScriptParameter(1);
	SetLocalNumber(oInvisoKreia, 16, nParam1);
	DelayCommand(0.1, AssignCommand(oInvisoKreia, ActionStartConversation(GetFirstPC(), "lrn_form", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}


void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	object oQimtiq = GetObjectByTag("qimtiq", 0);
	if ((!GetLocalBoolean(oQimtiq, 49))) {
		return;
	}
	SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
	DelayCommand(0.4, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_qimtiq", 0), 0, 1.0)));
	AssignCommand(oQimtiq, ClearAllActions());
	AssignCommand(oQimtiq, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void main() {
	SetLocalBoolean(GetObjectByTag("C6E3", 0), 34, 1);
	object oC7E3 = GetObjectByTag("C7E3", 0);
	SetLocalBoolean(oC7E3, 32, 1);
	DelayCommand(0.5, AssignCommand(oC7E3, ClearAllActions()));
	DelayCommand(0.5, AssignCommand(oC7E3, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
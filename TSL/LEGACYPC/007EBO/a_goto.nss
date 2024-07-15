void main() {
	object oG0t0 = GetObjectByTag("g0t0", 0);
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(oG0t0, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oG0t0, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}


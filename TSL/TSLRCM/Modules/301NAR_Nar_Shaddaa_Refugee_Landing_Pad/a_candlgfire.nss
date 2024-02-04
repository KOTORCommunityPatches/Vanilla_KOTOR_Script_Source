void main() {
	object oAtton = GetObjectByTag("Atton", 0);
	object o301AttonHelp = GetObjectByTag("301AttonHelp", 0);
	ClearAllActions();
	DelayCommand(0.3, AssignCommand(o301AttonHelp, ActionStartConversation(GetFirstPC(), "Attcan1", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
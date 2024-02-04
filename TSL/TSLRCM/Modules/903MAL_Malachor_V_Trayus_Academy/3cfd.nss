void main() {
	DelayCommand(1.0, AssignCommand(GetObjectByTag("DarthSion", 0), ClearAllActions()));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("DarthSion", 0), ActionStartConversation(GetFirstPC(), "903kreia", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
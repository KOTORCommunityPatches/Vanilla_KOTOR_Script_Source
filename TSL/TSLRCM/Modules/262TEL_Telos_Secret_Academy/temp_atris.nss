void main() {
	DelayCommand(1.0, AssignCommand(GetObjectByTag("Sister1Cut", 0), ClearAllActions()));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("Sister1Cut", 0), ActionStartConversation(GetFirstPC(), "siscut1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
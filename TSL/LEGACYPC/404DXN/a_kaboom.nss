void main() {
	DelayCommand(1.0, AssignCommand(GetObjectByTag("invis_explode", 0), ActionStartConversation(GetFirstPC(), "kaboom", 0, 1, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}


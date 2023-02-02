void main() {
	DelayCommand(1.0, AssignCommand(GetObjectByTag("fake_mand", 0), ActionStartConversation(GetFirstPC(), "mandjoin", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

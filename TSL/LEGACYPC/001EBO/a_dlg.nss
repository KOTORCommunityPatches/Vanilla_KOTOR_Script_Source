void main() {
	DelayCommand(0.1, AssignCommand(GetObjectByTag("pc_invis", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	ActionPlayAnimation(30, 1.0, (-1.0));
}


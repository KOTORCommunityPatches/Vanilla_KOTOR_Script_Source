void main() {
	object oMand = GetObjectByTag("Mand", 0);
	DelayCommand(0.3, AssignCommand(oMand, ActionStartConversation(GetPCSpeaker(), "906_mand", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}


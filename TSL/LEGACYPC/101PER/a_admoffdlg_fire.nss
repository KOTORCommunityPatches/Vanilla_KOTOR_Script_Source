void main() {
	object oN_commf002 = GetObjectByTag("admoff", 0);
	if ((GetIsObjectValid(oN_commf002) == 0)) {
		object oWP_ADMOFF = GetObjectByTag("WP_ADMOFF", 0);
		oN_commf002 = CreateObject(1, "n_commf002", GetLocation(oWP_ADMOFF), 0);
	}
	DelayCommand(0.1, AssignCommand(oN_commf002, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}


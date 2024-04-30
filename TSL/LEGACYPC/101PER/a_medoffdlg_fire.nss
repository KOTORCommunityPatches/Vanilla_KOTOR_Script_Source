void main() {
	object oN_commf001 = GetObjectByTag("medoff", 0);
	if ((GetIsObjectValid(oN_commf001) == 0)) {
		object oWP_MEDOFF = GetObjectByTag("WP_MEDOFF", 0);
		oN_commf001 = CreateObject(1, "n_commf001", GetLocation(oWP_MEDOFF), 0);
	}
	DelayCommand(0.1, AssignCommand(oN_commf001, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}


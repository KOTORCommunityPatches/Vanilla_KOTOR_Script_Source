void main() {
	object oTr_lift = GetObjectByTag("tr_lift", 0);
	if ((!GetLocalBoolean(oTr_lift, 40))) {
		SetLocalBoolean(oTr_lift, 40, 1);
		AssignCommand(oTr_lift, ActionStartConversation(GetFirstPC(), "tr_lift", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}


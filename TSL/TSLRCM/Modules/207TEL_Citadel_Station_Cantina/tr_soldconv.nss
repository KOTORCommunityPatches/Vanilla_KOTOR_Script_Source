void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 36, 1);
	object oRep_sold = GetObjectByTag("rep_sold", 0);
	SetLocalBoolean(oRep_sold, 36, 1);
	AssignCommand(oRep_sold, ClearAllActions());
	AssignCommand(oRep_sold, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}
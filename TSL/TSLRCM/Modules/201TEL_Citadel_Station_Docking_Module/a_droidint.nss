void main() {
	if ((GetEnteringObject() == GetPartyLeader())) {
		if ((!GetLocalBoolean(OBJECT_SELF, 36))) {
			object o201_ith_drd = GetObjectByTag("201_ith_drd", 0);
			SetLocalBoolean(OBJECT_SELF, 36, 1);
			SetLocalBoolean(o201_ith_drd, 36, 1);
			AssignCommand(o201_ith_drd, ClearAllActions());
			AssignCommand(o201_ith_drd, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
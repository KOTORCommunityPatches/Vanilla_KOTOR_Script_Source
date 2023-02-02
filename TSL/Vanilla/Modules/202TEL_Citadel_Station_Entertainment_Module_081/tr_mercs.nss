void main() {
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	if ((GetEnteringObject() == GetPartyLeader())) {
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		object oSullustan = GetObjectByTag("sullustan", 0);
		SetLocalBoolean(oSullustan, 36, 1);
		AssignCommand(oSullustan, ClearAllActions());
		AssignCommand(oSullustan, ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

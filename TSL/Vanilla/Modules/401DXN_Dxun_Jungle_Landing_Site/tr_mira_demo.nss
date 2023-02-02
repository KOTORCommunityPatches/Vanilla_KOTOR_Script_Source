void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (((!GetLocalBoolean(OBJECT_SELF, 40)) && IsNPCPartyMember(7))) {
		AssignCommand(GetObjectByTag("mira", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("mira", 0), ActionStartConversation(oEntering, "mirademo", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(OBJECT_SELF, 40, 1);
	}
}

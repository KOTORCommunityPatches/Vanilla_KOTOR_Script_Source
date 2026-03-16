void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	object oP_hanharr = GetObjectByTag("p_hanharr", 0);
	if ((IsNPCPartyMember(10) && (!GetLocalBoolean(OBJECT_SELF, 40)))) {
		AssignCommand(OBJECT_SELF, ActionStartConversation(GetFirstPC(), "502han", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		SetLocalBoolean(OBJECT_SELF, 40, 1);
	}
	else {
		SetLocalBoolean(GetObjectByTag("boma_frenzy", 0), 59, 1);
	}
}


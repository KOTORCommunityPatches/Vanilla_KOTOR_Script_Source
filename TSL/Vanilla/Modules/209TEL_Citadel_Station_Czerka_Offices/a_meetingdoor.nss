void main() {
	if ((!GetIsPC(GetEnteringObject()))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 36)) {
		return;
	}
	if ((GetGlobalNumber("200TEL_CzerkaM_Exch") != 6)) {
		return;
	}
	object oDoor_meeting = GetObjectByTag("door_meeting", 0);
	if ((GetPartyMemberCount() == 1)) {
		SetLocalBoolean(oDoor_meeting, 36, 1);
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		AssignCommand(oDoor_meeting, ClearAllActions());
		AssignCommand(oDoor_meeting, ActionStartConversation(GetFirstPC(), "meeting", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		SetLocalBoolean(oDoor_meeting, 37, 1);
		AssignCommand(oDoor_meeting, ClearAllActions());
		AssignCommand(oDoor_meeting, ActionStartConversation(GetFirstPC(), "meeting", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

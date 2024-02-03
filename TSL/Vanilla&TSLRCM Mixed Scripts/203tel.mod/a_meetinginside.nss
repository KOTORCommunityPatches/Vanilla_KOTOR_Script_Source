void main() {
	if ((GetFirstPC() != GetEnteringObject())) {
		return;
	}
	object oDoor_meeting = GetObjectByTag("door_meeting", 0);
	if (GetLocalBoolean(oDoor_meeting, 38)) {
		AssignCommand(oDoor_meeting, ClearAllActions());
		AssignCommand(oDoor_meeting, ActionStartConversation(GetFirstPC(), "meeting", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}


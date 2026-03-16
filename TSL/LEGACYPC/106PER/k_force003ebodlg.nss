void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		AurPostString("start conversation to get onboard!", 5, 5, 5.0);
		AssignCommand(oEntering, ClearAllActions());
		AssignCommand(oEntering, ActionJumpToObject(GetObjectByTag("WP_PC_JUMP", 0), 0));
		AssignCommand(oEntering, ActionStartConversation(GetFirstPC(), "ebonhawk", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}


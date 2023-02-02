void main() {
	if ((GetGlobalNumber("203TEL_B-4D4_PC") == 1)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if ((GetGlobalNumber("207TEL_Benok") == 0)) {
			SetGlobalNumber("207TEL_Benok", 1);
			AssignCommand(GetObjectByTag("207_benok", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("207_benok", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

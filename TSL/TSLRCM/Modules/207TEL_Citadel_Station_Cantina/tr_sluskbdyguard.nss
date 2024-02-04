void main() {
	if ((GetGlobalNumber("203TEL_B-4D4_PC") == 1)) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if ((GetGlobalNumber("207TEL_Benok") == 0)) {
			SetGlobalNumber("207TEL_Benok", 1);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			AssignCommand(GetObjectByTag("207_benok", 0), ClearAllActions());
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetPartyMemberByIndex(1), ClearAllActions());
			AssignCommand(GetPartyMemberByIndex(2), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionJumpToLocation(Location(Vector(10.33317, (-25.19724), 10.20047), 145.0)));
			AssignCommand(GetPartyMemberByIndex(1), ActionJumpToLocation(Location(Vector(11.15806, (-23.24191), 10.20047), (-70.0))));
			AssignCommand(GetPartyMemberByIndex(2), ActionJumpToLocation(Location(Vector(8.59362, (-24.36691), 10.20047), (-70.0))));
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			DelayCommand(0.3, AssignCommand(GetObjectByTag("207_benok", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
	}
}
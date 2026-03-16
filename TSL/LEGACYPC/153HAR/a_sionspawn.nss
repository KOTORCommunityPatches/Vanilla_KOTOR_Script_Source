void main() {
	object oEntering = GetEnteringObject();
	if ((((oEntering == GetPartyMemberByIndex(0)) || (oEntering == GetPartyMemberByIndex(1))) || (oEntering == GetPartyMemberByIndex(2)))) {
		if ((GetGlobalNumber("152HAR_Sion_Spawn") != 0)) {
			return;
		}
		SetGlobalNumber("152HAR_Sion_Spawn", 1);
		object oWp_sion_1 = GetObjectByTag("wp_sion_1", 0);
		location location1 = GetLocation(oWp_sion_1);
		object oN_darthsion = CreateObject(1, "n_darthsion", location1, 0);
		if ((!GetIsObjectValid(oN_darthsion))) {
			AurPostString("No Sion, game over you WIN!", 5, 7, 10.0);
			return;
		}
		else {
			ChangeToStandardFaction(oN_darthsion, 5);
			DelayCommand(0.1, AssignCommand(oN_darthsion, ActionStartConversation(GetFirstPC(), "153Sion", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
	}
}


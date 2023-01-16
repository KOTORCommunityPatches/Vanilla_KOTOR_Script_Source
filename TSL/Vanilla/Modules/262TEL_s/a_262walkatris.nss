void main() {
	object oAtris = GetObjectByTag("Atris", 0);
	object oWP_PC_Council2 = GetWaypointByTag("WP_PC_Council2");
	location location1 = GetLocation(oWP_PC_Council2);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionMoveToLocation(location1, 0));
			DelayCommand(7.0, SetDialogPlaceableCamera(2));
			DelayCommand(14.0, ActionResumeConversation());
			RemovePartyMember(0);
			RemovePartyMember(6);
			break;
		case 1:
			AssignCommand(oAtris, ClearAllActions());
			AssignCommand(oAtris, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
	}
}


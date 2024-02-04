void main() {
	int nParam1 = GetScriptParameter(1);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			SetGlobalFadeIn(0.0, 1.6, 0.0, 0.0, 0.0);
			DelayCommand(2.0, AssignCommand(oVisasMarr, ActionMoveToLocation(Location(Vector((-0.12513), 77.12585, 3.0), 117.16985), 0)));
			DelayCommand(2.5, AssignCommand(oHandmaiden, ActionMoveToLocation(Location(Vector((-2.4542), 80.92927, 3.0), 357.37634), 0)));
			DelayCommand(3.2, ActionResumeConversation());
			break;
		case 1:
			CreatureFlourishWeapon(oHandmaiden);
			SetLightsaberPowered(oHandmaiden, 1, 1, 1);
			break;
		case 2:
			ActionPauseConversation();
			SetGlobalNumber("000_Handmaiden_Dead", 1);
			RemoveAvailableNPC(4);
			CreatureFlourishWeapon(oVisasMarr);
			CreatureFlourishWeapon(oHandmaiden);
			SetGlobalFadeOut(1.0, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(3.5, ActionResumeConversation());
			break;
		case 3:
			StartNewModule("902MAL", "K_LAST_LOCATION", "", "", "", "", "", "");
			break;
	}
}
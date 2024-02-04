void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("502OND_Riot") == 0)) {
		SetGlobalNumber("502OND_Riot", 1);
		SetLocalBoolean(OBJECT_SELF, 40, 1);
		DelayCommand(0.2, AssignCommand(GetFirstPC(), ActionMoveToObject(GetWaypointByTag("wp_mob_scene"), 0, 1.0)));
		AssignCommand(GetObjectByTag("ponlar", 0), ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		if ((GetGlobalNumber("502OND_Riot") == 2)) {
			SetLocalBoolean(OBJECT_SELF, 41, 1);
			SetLocalBoolean(GetObjectByTag("ponlar", 0), 50, 1);
			DelayCommand(0.2, AssignCommand(GetFirstPC(), ActionMoveToObject(GetWaypointByTag("wp_mob_scene"), 0, 1.0)));
			AssignCommand(GetObjectByTag("ponlar", 0), ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
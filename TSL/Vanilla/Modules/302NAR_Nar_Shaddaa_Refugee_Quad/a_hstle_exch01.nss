void main() {
	if (((GetGlobalNumber("302_AngryExchangeThugs") > 0) && GetObjectSeen(GetFirstPC(), OBJECT_SELF))) {
		ChangeToStandardFaction(OBJECT_SELF, 1);
		IncrementGlobalNumber("302_AngryExchangeThugs", 1);
		ActionAttack(GetPartyLeader(), 0);
	}
}

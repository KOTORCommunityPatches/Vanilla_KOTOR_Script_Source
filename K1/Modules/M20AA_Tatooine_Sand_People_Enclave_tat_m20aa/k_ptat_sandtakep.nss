void main() {
	
	object oSpeaker = GetPCSpeaker();
	object oPearl = GetItemPossessedBy(oSpeaker, "tat18_dragonprl");
	object oWP_StoryTeller = GetWaypointByTag("tat20_lorespawn");
	location lStoryTeller = GetLocation(oWP_StoryTeller);
	
	ActionTakeItem(oPearl, oSpeaker);
	SetGlobalNumber("tat_SandWarrior", 2);
	
	CreateObject(OBJECT_TYPE_CREATURE, "tat20_xstory_01", lStoryTeller);
	CreateObject(OBJECT_TYPE_WAYPOINT, "tat20_lorenote", lStoryTeller);
}
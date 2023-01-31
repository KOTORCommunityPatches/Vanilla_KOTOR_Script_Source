void main() {
	
	object oRakghoul = CreateObject(OBJECT_TYPE_CREATURE, "tar04_hendarfate", GetLocation(GetObjectByTag("tar04_sphendfate", 0)));
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}
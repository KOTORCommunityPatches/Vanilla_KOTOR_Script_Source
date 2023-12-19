void main() {
	
	object oRickard = GetObjectByTag("dan14_rickard", 0);
	
	ActionPauseConversation();
	
	ActionTakeItem(GetItemPossessedBy(oRickard, "dan14_nothing"), oRickard);
	
	ActionResumeConversation();
}

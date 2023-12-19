void main() {
	
	object oHandon = GetObjectByTag("dan14_handon", 0);
	
	ActionPauseConversation();
	
	ActionTakeItem(GetItemPossessedBy(oHandon, "dan14_nothing"), oHandon);
	
	ActionResumeConversation();
}

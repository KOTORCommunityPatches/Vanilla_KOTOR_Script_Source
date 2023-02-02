void main() {
	
	object oDatapad = GetObjectByTag("k35_itm_sithdata", 0);
	
	ActionPauseConversation();
	
	ActionTakeItem(oDatapad, GetFirstPC());
	ActionDoCommand(DestroyObject(oDatapad));
	
	ActionResumeConversation();
}

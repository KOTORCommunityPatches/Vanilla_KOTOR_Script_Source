void main() {
	
	ActionPauseConversation();
	
	object oQueen = GetObjectByTag("kor36_plc_queen", 0);
	
	ActionMoveToObject(oQueen, FALSE, 1.0);
	
	CreateItemOnObject("k36_itm_holocron", OBJECT_SELF, 1);
	
	object oPC = GetFirstPC();
	
	ActionMoveToObject(oPC, FALSE, 1.0);
	
	ActionResumeConversation();
}

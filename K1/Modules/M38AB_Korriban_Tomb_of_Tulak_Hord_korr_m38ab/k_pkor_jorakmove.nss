void main() {
	
	object oJorak = GetObjectByTag("kor38b_jorakuln", 0);
	object oJorak_WP = GetObjectByTag("k38b_way_jorak1", 0);
	
	ActionPauseConversation();
	
	AssignCommand(oJorak, ActionMoveToObject(oJorak_WP, TRUE));
	
	ActionResumeConversation();
}
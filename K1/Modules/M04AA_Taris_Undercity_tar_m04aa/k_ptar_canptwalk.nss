void main() {
	
	object oWP = GetObjectByTag("wp_01_03", 0);
	int nNum;
	object oObject;
	
	MusicBackgroundPlay(GetArea(OBJECT_SELF));
	
	ActionPauseConversation();
	
	DelayCommand(1.0, AssignCommand(GetObjectByTag("daviktroop041", 0), ActionMoveToObject(GetObjectByTag("wp_01_02", 0))));
	DelayCommand(2.0, AssignCommand(GetObjectByTag("daviktroop042", 0), ActionMoveToObject(GetObjectByTag("wp_01_01", 0))));
	DelayCommand(3.0, AssignCommand(GetObjectByTag("daviktroop043", 0), ActionMoveToObject(GetObjectByTag("wp_01_00", 0))));
	ActionMoveToObject(GetObjectByTag("wp_01_03", 0));
	
	ActionWait(3.0);
	ActionResumeConversation();
}

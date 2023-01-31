void main() {
	
	object oTech = GetObjectByTag("lev40_t3tech", 0);
	object oDroid = GetObjectByTag("lev40_shopdroid", 0);
	object oDoor = GetObjectByTag("lev40_drddoor", 0);
	
	AssignCommand(oDroid, ActionMoveToObject(GetFirstPC(), FALSE, 1.0));
	
	DelayCommand(3.0, AssignCommand(oTech, ActionMoveToObject(GetObjectByTag("lev40_wpt3tech", 0), FALSE, 1.0)));
	
	DelayCommand(6.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
	
	ActionPauseConversation();
	ActionWait(8.0);
	ActionResumeConversation();
}
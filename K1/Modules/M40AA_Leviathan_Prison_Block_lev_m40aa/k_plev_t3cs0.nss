void sub2() {
	ActionMoveToObject(GetFirstPC(), FALSE, 1.0);
	ActionPlayAnimation(ANIMATION_LOOPING_GET_MID, 1.0, 3.0);
}


void main() {
	
	object oTech = GetObjectByTag("lev40_t3tech", 0);
	object oDoor = GetObjectByTag("lev40_drddoor", 0);
	
	if (GetIsObjectValid(oDoor))
		{
			Db_PostString("GOOD DOOR", 5, 5, 5.0);
		}
	
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
	
	DelayCommand(1.0, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("lev40_wpt3techa", 0), FALSE, 1.0)));
	
	DelayCommand(2.0, AssignCommand(oTech, sub2()));
	
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}
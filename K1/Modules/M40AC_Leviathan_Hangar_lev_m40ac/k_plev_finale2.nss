void main() {
	
	object oDoor = GetObjectByTag("lev40_blastdoord", 0);
	object oCarth = GetObjectByTag("carth", 0);
	
	DelayCommand(2.5, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
	
	oDoor = GetObjectByTag("lev40_blastdoorf", 0);
	DelayCommand(3.0, SetLocked(oDoor, FALSE));
	
	oDoor = GetObjectByTag("lev40_blastdoorh", 0);
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	SetLocked(oDoor, TRUE);
	
	oDoor = GetObjectByTag("lev40_blastdoori", 0);
	AssignCommand(oDoor, ActionCloseDoor(oDoor));
	SetLocked(oDoor, TRUE);
	
	DelayCommand(2.0, AssignCommand(oCarth, ActionMoveToObject(GetFirstPC(), TRUE)));
	AssignCommand(GetFirstPC(), ClearAllEffects());
	DelayCommand(5.0, AssignCommand(oCarth, ClearAllActions()));
	
	ActionPauseConversation();
	ActionWait(4.0);
	ActionResumeConversation();
	
	object oMalak = GetObjectByTag("darthmalak400", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	location lBastEnd = GetLocation(GetObjectByTag("LEV_BASTILA_ENDING", 0));
	location lMalakEnd = GetLocation(GetObjectByTag("LEV_MALAK_ENDING", 0));
	
	AssignCommand(oBastila, JumpToLocation(lBastEnd));
	AssignCommand(oMalak, JumpToLocation(lMalakEnd));
	
	DelayCommand(1.3, AssignCommand(oMalak, CutsceneAttack(oBastila, 114, ATTACK_RESULT_HIT_SUCCESSFUL, 0)));  // 114 = F2A2, single saber Flurry
	
	DelayCommand(1.5, SetDialogPlaceableCamera(32));
}
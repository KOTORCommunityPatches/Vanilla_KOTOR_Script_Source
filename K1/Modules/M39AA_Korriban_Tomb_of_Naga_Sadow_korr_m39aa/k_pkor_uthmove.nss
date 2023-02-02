void main() {
	
	object oPC = GetFirstPC();
	object oYuthura = GetObjectByTag("kor39_yuthura", 0);
	object oWP_Yuthura = GetObjectByTag("k39_way_yuthmove", 0);
	object oDoor = GetObjectByTag("kor39_kor36", 0);
	
	ActionPauseConversation();

	DelayCommand(0.5, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
	DelayCommand(1.0, SetLocked(oDoor, TRUE));

	ActionMoveToObject(oPC);
	DelayCommand(2.0, AssignCommand(oYuthura, ActionMoveToObject(oWP_Yuthura)));
	
	ActionResumeConversation();
}

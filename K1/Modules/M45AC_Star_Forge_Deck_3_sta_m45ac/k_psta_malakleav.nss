void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oWP = GetObjectByTag("sta_way_malak2", 0);
	object oDoor = GetObjectByTag("k45_door_malak", 0);
	
	ActionPauseConversation();
	
	DelayCommand(2.1, DestroyObject(oMalak));
	DelayCommand(0.5, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
	
	ActionWait(2.2);
	ActionResumeConversation();
}

void main() {
	
	object oCarth = GetObjectByTag("Carth", 0);
	object oBastila = GetObjectByTag("Bastila", 0);
	object oPC = GetFirstPC();
	
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oCarth, ClearAllActions());
	AssignCommand(oBastila, ClearAllActions());
	
	DelayCommand(0.2, AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("lev40_party0", 0), 0, 1.0)));
	DelayCommand(0.7, AssignCommand(oCarth, ActionMoveToObject(GetObjectByTag("lev40_party1", 0), 0, 1.0)));
	DelayCommand(1.0, AssignCommand(oBastila, ActionMoveToObject(GetObjectByTag("lev40_party2", 0), 0, 1.0)));
	
	ActionPauseConversation();
	
	DelayCommand(6.0, AssignCommand(GetObjectByTag("lev40_bdgdoor", 0), ActionCloseDoor(OBJECT_SELF)));
	DelayCommand(6.5, SetLocked(GetObjectByTag("lev40_bdgdoor", 0), 1));
	
	ActionWait(6.6);
	ActionResumeConversation();
}
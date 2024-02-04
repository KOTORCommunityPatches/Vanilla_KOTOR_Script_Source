void main() {
	object oSW_PC_ROOM_1 = GetObjectByTag("SW_PC_ROOM_1", 0);
	object oPC = GetFirstPC();
	ClearAllActions();
	ActionPauseConversation();
	AssignCommand(oPC, ActionMoveToObject(oSW_PC_ROOM_1, 1, 1.0));
	DelayCommand(2.0, ActionResumeConversation());
}
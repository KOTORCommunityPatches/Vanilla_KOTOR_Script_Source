void main() {
	object oTrafficEastDoor = GetObjectByTag("TrafficEastDoor", 0);
	object oAtton = GetObjectByTag("Atton", 0);
	AssignCommand(oAtton, ClearAllActions());
	AssignCommand(oAtton, JumpToObject(GetObjectByTag("WP_ATTON_PREDOOR", 0), 1));
	ActionPauseConversation();
	AssignCommand(oAtton, ActionOpenDoor(oTrafficEastDoor));
	DelayCommand(5.0, ActionResumeConversation());
}


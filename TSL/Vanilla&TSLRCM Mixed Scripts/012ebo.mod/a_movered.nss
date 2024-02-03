void main() {
	DestroyObject(GetObjectByTag("gas", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 1), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 2), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 3), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 4), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 5), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 6), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("gas", 7), 0.0, 0, 0.0, 0);
	object oRECapt = GetObjectByTag("RECapt", 0);
	AssignCommand(oRECapt, ActionJumpToLocation(GetLocation(GetObjectByTag("wp_red_001", 0))));
	SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	DelayCommand(1.5, AssignCommand(GetObjectByTag("REThug4", 0), ActionMoveToObject(GetObjectByTag("wp_red_002", 0), 0, 1.0)));
	DelayCommand(1.5, ActionResumeConversation());
}


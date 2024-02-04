void main() {
	ActionPauseConversation();
	SetGlobalFadeIn(0.0, 1.5, 0.0, 0.0, 0.0);
	object oAtton = GetObjectByTag("Atton", 0);
	SetLockOrientationInDialog(oAtton, 1);
	AssignCommand(oAtton, ActionMoveToLocation(Location(Vector(9.13631, 40.05455, 3.0), 89.24869), 1));
	SetGlobalFadeOut(3.5, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(6.0, ActionResumeConversation());
}
struct structtype1 {
	float float1;
	float float3;
};

void main() {
	ActionPauseConversation();
	object oZ2_brianna = GetObjectByTag("z2_brianna", 0);
	AssignCommand(oZ2_brianna, ActionMoveToLocation(Location(Vector(3.39814, (-28.37413), 24.10791), 0.0), 0));
	SetLockOrientationInDialog(oZ2_brianna, 0);
	DelayCommand(2.0, AssignCommand(oZ2_brianna, ClearAllActions()));
	DelayCommand(2.5, ActionResumeConversation());
}


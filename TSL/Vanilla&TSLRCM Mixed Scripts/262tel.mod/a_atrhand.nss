struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oZ2_brianna = GetObjectByTag("z2_brianna", 0);
	object oZ2_atris = GetObjectByTag("z2_atris", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		SetGlobalFadeIn(2.0, 2.0, 0.0, 0.0, 0.0);
		AssignCommand(oZ2_brianna, ActionJumpToLocation(Location(Vector(12.18993, (-40.82211), 24.10791), (-1.30824))));
		SetLockOrientationInDialog(oZ2_brianna, 1);
		SetLockOrientationInDialog(oZ2_atris, 1);
	}
	if ((nParam1 == 1)) {
		location location2 = Location(Vector(14.12298, (-45.78258), 24.10791), (-1.32835));
		AssignCommand(oZ2_brianna, ActionMoveToLocation(location2, 0));
	}
	if ((nParam1 == 2)) {
		ActionPauseConversation();
		AssignCommand(oZ2_brianna, ActionMoveToLocation(Location(Vector(3.39814, (-28.37413), 24.10791), 0.0), 0));
		DelayCommand(2.5, AssignCommand(oZ2_brianna, ClearAllActions()));
		DelayCommand(4.5, AssignCommand(GetObjectByTag("z2_brianna", 0), SetFacingPoint(GetPosition(GetObjectByTag("z2_atris", 0)))));
		DelayCommand(5.5, ActionResumeConversation());
	}
}


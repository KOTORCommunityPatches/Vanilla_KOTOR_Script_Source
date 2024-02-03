struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oKreia = GetObjectByTag("kreia", 0);
	switch (nParam1) {
		case 0:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			AssignCommand(oPC, ActionJumpToLocation(Location(Vector(79.61447, 45.32388, 1.8), 90.0)));
			AssignCommand(oKreia, ActionJumpToLocation(Location(Vector(78.09386, 45.0376, 1.8), 90.0)));
			SetGlobalFadeIn(1.0, 2.0, 0.0, 0.0, 0.0);
			break;
		case 1:
			ActionPauseConversation();
			DelayCommand(1.5, AssignCommand(oKreia, ActionMoveToLocation(Location(Vector(77.45441, 51.84908, 1.8), 90.0), 0)));
			DelayCommand(2.0, AssignCommand(oPC, ActionMoveToLocation(Location(Vector(80.06394, 49.5107, 1.8), 90.0), 0)));
			DelayCommand(3.5, ActionResumeConversation());
			DelayCommand(4.0, SetDialogPlaceableCamera(32));
			break;
		case 2:
			AssignCommand(oVisasMarr, ClearAllActions());
			DelayCommand(0.2, AssignCommand(oVisasMarr, ActionPlayAnimation(1022, 1.0, 2.0)));
			DelayCommand(0.6, AssignCommand(oVisasMarr, SetFacingPoint(GetPosition(GetObjectByTag("kreia", 0)))));
			break;
	}
}


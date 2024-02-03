struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oKreiaEvil = GetObjectByTag("KreiaEvil", 0);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
			SpawnAvailableNPC(4, Location(Vector(2.31002, 41.22535, 21.37277), 254.97498));
			AssignCommand(oKreiaEvil, ClearAllActions());
			AssignCommand(oKreiaEvil, ActionJumpToLocation(Location(Vector(2.85858, 31.44914, 21.79856), 87.27362)));
			AssignCommand(GetFirstPC(), ActionJumpToLocation(Location(Vector(57.32856, 92.5786, 15.894), 267.8829)));
			DelayCommand(2.0, ActionResumeConversation());
			break;
		case 1:
			AssignCommand(oKreiaEvil, ActionMoveToLocation(Location(Vector(3.02497, 35.1415, 21.3853), 91.39111), 0));
			break;
		case 2:
			SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0);
			break;
		case 3:
			SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
			DestroyObject(oHandmaiden, 0.0, 0, 0.0, 0);
			DestroyObject(oKreiaEvil, 0.0, 0, 0.0, 0);
			break;
	}
}


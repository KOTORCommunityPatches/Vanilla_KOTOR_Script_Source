struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oPC;
	if (GetScriptParameter(1)) {
		oPC = GetObjectByTag("Kreia", 0);
	}
	else {
		oPC = GetFirstPC();
	}
	SetLockOrientationInDialog(oPC, 1);
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_KREIA_END_1"))));
	object oVrook = GetObjectByTag("Vrook", 0);
	object oKavar = GetObjectByTag("Kavar", 0);
	object oZezKaiEll = GetObjectByTag("ZezKaiEll", 0);
	vector struct1;
	0.0;
	0.0;
	struct1 = 0.0;
	int int2 = 0;
	if (GetIsObjectValid(oKavar)) {
		AssignCommand(oKavar, SetIsDestroyable(0, 1, 1));
		DelayCommand(0.5, AssignCommand(oKavar, ActionMoveToObject(oPC, 1, 1.0)));
	}
}


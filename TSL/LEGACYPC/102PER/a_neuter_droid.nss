void main() {
	int nParam1 = GetScriptParameter(1);
	SetGlobalNumber("101PER_Switch", nParam1);
	int int3 = 0;
	string string1 = "g_assassindrd01";
	object object1 = GetObjectByTag(string1, int3);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 5);
		SetLockOrientationInDialog(object1, 1);
		(int3++);
		object1 = GetObjectByTag(string1, int3);
	}
	AurPostString((("a_neuter_droid: " + IntToString(int3)) + " droids shut down."), 5, 5, 5.0);
	GiveXPToCreature(GetFirstPC(), (int3 * 50));
}


void main() {
	int int1 = 0;
	string string1 = "g0t0droid";
	object object1 = GetObjectByTag(string1, int1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 5);
		SetLockOrientationInDialog(object1, 1);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
	AurPostString((("a_neuter_droid: " + IntToString(int1)) + " droids have been shut down."), 5, 5, 5.0);
}


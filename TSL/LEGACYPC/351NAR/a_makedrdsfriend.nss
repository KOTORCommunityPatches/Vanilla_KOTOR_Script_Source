void main() {
	int int1 = 0;
	string string1 = "g0t0droid";
	object object1 = GetObjectByTag(string1, int1);
	if ((!GetGlobalNumber("351NAR_Droid01"))) {
		GivePlotXP("Nar_Shaddaa_Plot_Base_XP", 50);
	}
	SetGlobalNumber("351NAR_Droid01", 1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 2);
		SetLockOrientationInDialog(object1, 1);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}


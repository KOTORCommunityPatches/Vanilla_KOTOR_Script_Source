void main() {
	int int1 = 0;
	if ((!GetGlobalNumber("299TEL_Mission_Over"))) {
		GivePlotXP("Telos_Plot_Base_XP", 10);
	}
	string string1 = "hk50";
	object oHK50cs = GetObjectByTag("HK50cs", 0);
	object oHK50cs1 = GetObjectByTag("HK50cs1", 0);
	object oHK50cs2 = GetObjectByTag("HK50cs2", 0);
	object object7 = GetObjectByTag(string1, int1);
	while ((object7 != OBJECT_INVALID)) {
		ChangeToStandardFaction(oHK50cs, 1);
		ChangeToStandardFaction(oHK50cs1, 1);
		ChangeToStandardFaction(oHK50cs2, 1);
		ChangeToStandardFaction(object7, 1);
		ExecuteScript("k_ai_master", object7, 1003);
		SetLockOrientationInDialog(object7, 1);
		(int1++);
		object7 = GetObjectByTag(string1, int1);
	}
}
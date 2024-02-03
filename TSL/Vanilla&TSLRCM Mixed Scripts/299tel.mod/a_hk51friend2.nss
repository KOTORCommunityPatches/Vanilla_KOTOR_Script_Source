void main() {
	int int1 = 0;
	string string1 = "HK51_1";
	object object1 = GetObjectByTag(string1, int1);
	if ((!GetGlobalNumber("299TEL_Mission_Over"))) {
		GivePlotXP("Telos_Plot_Base_XP", 25);
	}
	SetGlobalNumber("299TEL_HK51_Active", 1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 2);
		ChangeToStandardFaction(GetObjectByTag("HK517", 0), 2);
		SetLockOrientationInDialog(object1, 1);
		AssignCommand(object1, ActionForceMoveToObject(GetObjectByTag("mn_construct", 0), 0, 1.0, 30.0));
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}


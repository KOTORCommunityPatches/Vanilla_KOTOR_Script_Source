// Prototypes
void sub1();

void sub1() {
	int int1 = 0;
	string string1 = "hk51_1";
	object object1 = GetObjectByTag(string1, int1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 2);
		AssignCommand(object1, ActionPlayAnimation(115, 1.0, 0.0));
		SetLockOrientationInDialog(object1, 3);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}

void main() {
	int int1 = 0;
	string string1 = "HK51";
	object object1 = GetObjectByTag(string1, int1);
	if ((!GetGlobalNumber("299TEL_Mission_Over"))) {
		GivePlotXP("Telos_Plot_Base_XP", 25);
	}
	SetGlobalNumber("299TEL_HK51_Active", 1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 2);
		ChangeToStandardFaction(GetObjectByTag("HK517", 0), 2);
		AssignCommand(object1, ActionPlayAnimation(115, 1.0, 0.0));
		SetLockOrientationInDialog(object1, 1);
		sub1();
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}


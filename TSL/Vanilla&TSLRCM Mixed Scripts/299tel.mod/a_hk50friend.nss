// Prototypes
void sub1();

void sub1() {
	int int1 = 0;
	string string1 = "hk50_1";
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
	string string1 = "HK50";
	object object1 = GetObjectByTag(string1, int1);
	object oHK50cs = GetObjectByTag("HK50cs", 0);
	object oHK50cs1 = GetObjectByTag("HK50cs1", 0);
	object oHK50cs2 = GetObjectByTag("HK50cs2", 0);
	if ((!GetGlobalNumber("299TEL_Mission_Over"))) {
		GivePlotXP("Telos_Plot_Base_XP", 25);
	}
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 2);
		ChangeToStandardFaction(oHK50cs, 2);
		ChangeToStandardFaction(oHK50cs1, 2);
		ChangeToStandardFaction(oHK50cs2, 2);
		SetLockOrientationInDialog(object1, 1);
		sub1();
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}


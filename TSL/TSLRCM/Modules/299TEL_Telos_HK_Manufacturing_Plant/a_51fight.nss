// Prototypes
void sub2();
void sub1();

void sub2() {
	int int1 = 0;
	string string1 = "hk51";
	object object1 = GetObjectByTag(string1, int1);
	object oHK517 = GetObjectByTag("HK517", 0);
	while ((object1 != OBJECT_INVALID)) {
		SetLockOrientationInDialog(object1, 1);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}

void sub1() {
	object oHK511 = GetObjectByTag("HK511", 0);
	object oHK512 = GetObjectByTag("HK512", 0);
	object oHK513 = GetObjectByTag("HK513", 0);
	int int1 = 0;
	string string1 = "hk50";
	object object7 = GetObjectByTag(string1, int1);
	object oHK50cut2 = GetObjectByTag("HK50cut2", 0);
	object oHK501 = GetObjectByTag("HK501", 0);
	object oHK502 = GetObjectByTag("HK502", 0);
	while ((object7 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object7, 1);
		SetLockOrientationInDialog(object7, 1);
		(int1++);
		object7 = GetObjectByTag(string1, int1);
	}
	ChangeToStandardFaction(oHK50cut2, 1);
	ChangeToStandardFaction(oHK501, 1);
	ChangeToStandardFaction(oHK502, 1);
	AssignCommand(oHK50cut2, ActionAttack(oHK511, 0));
	AssignCommand(oHK501, ActionAttack(oHK511, 0));
	AssignCommand(oHK502, ActionAttack(oHK511, 0));
}

void main() {
	if ((GetGlobalNumber("299TEL_HK51_Core") == 1)) {
		ExecuteScript("a_move51line", GetArea(OBJECT_SELF), 0xFFFFFFFF);
		object oHK511 = GetObjectByTag("HK511", 0);
		object oHK512 = GetObjectByTag("HK512", 0);
		object oHK513 = GetObjectByTag("HK513", 0);
		sub1();
		sub2();
		ChangeToStandardFaction(oHK511, 2);
		ChangeToStandardFaction(oHK512, 2);
		ChangeToStandardFaction(oHK513, 2);
		ExecuteScript("k_ai_master", oHK511, 1003);
		ExecuteScript("k_ai_master", oHK512, 1003);
		ExecuteScript("k_ai_master", oHK513, 1003);
	}
	else {
		if ((GetGlobalNumber("299TEL_HK51_Core") == 0)) {
			object object8 = GetObjectByTag("HK511", 0);
			object object10 = GetObjectByTag("HK512", 0);
			object object12 = GetObjectByTag("HK513", 0);
			ChangeToStandardFaction(object8, 3);
			ChangeToStandardFaction(object10, 3);
			ChangeToStandardFaction(object12, 3);
			ExecuteScript("k_ai_master", object8, 1003);
			ExecuteScript("k_ai_master", object10, 1003);
			ExecuteScript("k_ai_master", object12, 1003);
		}
		ExecuteScript("a_move51line", GetArea(OBJECT_SELF), 0xFFFFFFFF);
	}
}
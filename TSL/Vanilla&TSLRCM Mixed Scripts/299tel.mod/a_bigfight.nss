// Prototypes
void sub4();
void sub3();
void sub2();
void sub1();

void sub4() {
	int int1 = 0;
	string string1 = "hk50";
	object object1 = GetObjectByTag(string1, int1);
	object oHK50cs = GetObjectByTag("HK50cs", 0);
	object oHK50cs1 = GetObjectByTag("HK50cs1", 0);
	object oHK50cs2 = GetObjectByTag("HK50cs2", 0);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 1);
		ChangeToStandardFaction(oHK50cs, 1);
		ChangeToStandardFaction(oHK50cs1, 1);
		ChangeToStandardFaction(oHK50cs2, 1);
		SetLockOrientationInDialog(object1, 1);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}

void sub3() {
	int int1 = 0;
	string string1 = "hk51";
	object object1 = GetObjectByTag(string1, int1);
	object oHK517 = GetObjectByTag("HK517", 0);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 3);
		ChangeToStandardFaction(oHK517, 3);
		SetLockOrientationInDialog(object1, 1);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}

void sub2() {
	int int1 = 0;
	string string1 = "hk50";
	object object1 = GetObjectByTag(string1, int1);
	object oHK50cs = GetObjectByTag("HK50cs", 0);
	object oHK50cs1 = GetObjectByTag("HK50cs1", 0);
	object oHK50cs2 = GetObjectByTag("HK50cs2", 0);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 16);
		ChangeToStandardFaction(oHK50cs, 16);
		ChangeToStandardFaction(oHK50cs1, 16);
		ChangeToStandardFaction(oHK50cs2, 16);
		SetLockOrientationInDialog(object1, 1);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}

void sub1() {
	int int1 = 0;
	string string1 = "hk51";
	object object1 = GetObjectByTag(string1, int1);
	object oHK517 = GetObjectByTag("HK517", 0);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 17);
		ChangeToStandardFaction(oHK517, 17);
		SetLockOrientationInDialog(object1, 3);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}

void main() {
	if ((GetGlobalNumber("000_HK47_Memory") <= 1)) {
		object oHK517 = GetObjectByTag("HK517", 0);
		object oHK50cs = GetObjectByTag("HK50cs", 0);
		object oHK50cs2 = GetObjectByTag("HK50cs2", 0);
		sub1();
		sub2();
		ExecuteScript("k_ai_master", oHK517, 1003);
		ExecuteScript("k_ai_master", oHK50cs, 1003);
		ExecuteScript("k_ai_master", oHK50cs2, 1003);
	}
	else {
		if ((GetGlobalNumber("000_HK47_Memory") == 2)) {
			object object7 = GetObjectByTag("HK517", 0);
			object object9 = GetObjectByTag("HK50cs", 0);
			object object11 = GetObjectByTag("HK50cs2", 0);
			sub3();
			sub4();
			ExecuteScript("k_ai_master", object7, 1003);
			ExecuteScript("k_ai_master", object9, 1003);
			ExecuteScript("k_ai_master", object11, 1003);
		}
	}
}


// Prototypes
void sub4(object objectParam1);
object sub3();
void sub2();
void sub1();

void sub4(object objectParam1) {
	string string1;
	if ((GetGlobalNumber("303NAR_Hanharr_Side") == 0)) {
		string1 = "miraend2";
	}
	else {
		string1 = "hanend";
	}
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionStartConversation(GetFirstPC(), string1, 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

object sub3() {
	location location1 = GetLocation(GetObjectByTag("wp_mira", 0));
	location location3 = GetLocation(GetObjectByTag("wp_atton", 0));
	object object3;
	object object4;
	int int1;
	int int2;
	if ((GetGlobalNumber("303NAR_Hanharr_Side") == 0)) {
		int1 = 7;
		int2 = 0;
	}
	else {
		int1 = 10;
		int2 = 6;
	}
	object3 = SpawnAvailableNPC(int1, location1);
	object4 = SpawnAvailableNPC(int2, location3);
	return object3;
}

void sub2() {
	object object1 = sub3();
	DelayCommand(0.1, sub4(object1));
}

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void main() {
	if ((GetEnteringObject() != GetFirstPC())) {
		return;
	}
	DelayCommand(1.0, sub1());
	DelayCommand(1.0, sub2());
}


// Prototypes
void sub1();

void sub1() {
	int int1 = 0;
	object oPC = GetFirstPC();
	string string1 = "hk51_1";
	object object3 = GetObjectByTag(string1, int1);
	while ((object3 != OBJECT_INVALID)) {
		AssignCommand(object3, ActionForceFollowObject(oPC, 0.5));
		(int1++);
		object3 = GetObjectByTag(string1, int1);
	}
}

void main() {
	int int1 = 0;
	string string1 = "hk51";
	object object1 = GetObjectByTag(string1, int1);
	while ((object1 != OBJECT_INVALID)) {
		AssignCommand(object1, ActionForceMoveToObject(GetObjectByTag("mn_construct", 0), 0, 1.0, 30.0));
		sub1();
		DelayCommand(0.5, AssignCommand(GetObjectByTag("hk51", 0), ActionAttack(GetObjectByTag("hk50", 0), 0)));
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}


// Globals
	int intGLOB_1;
	int intGLOB_2;

// Prototypes
int sub2(string stringParam1);
string sub1();

int sub2(string stringParam1) {
	if ((stringParam1 == "WP_HK51_NME_")) {
		return 1;
	}
	else {
		return 2;
	}
}

string sub1() {
	if ((intGLOB_1 == 1)) {
		return "WP_HK51_LINE_";
	}
	else {
		return "WP_HK51_NME_";
		intGLOB_2 = 1;
	}
}

void main() {
	int int1 = 0;
	intGLOB_2 = 2;
	intGLOB_1 = GetGlobalNumber("299TEL_HK51_Core");
	string string1 = "hk51_1";
	string string2;
	string string3 = IntToString(int1);
	object oHk51cs = GetObjectByTag("hk51cs", 0);
	object object3 = GetObjectByTag(string1, 0);
	object oHK51_Door = GetObjectByTag("HK51_Door", 0);
	while ((object3 != OBJECT_INVALID)) {
		AssignCommand(object3, ClearAllActions());
		DelayCommand(1.0, AssignCommand(object3, ActionJumpToObject(GetObjectByTag((sub1() + string3), 0), 1)));
		DelayCommand(2.5, AssignCommand(object3, ActionPlayAnimation(19, 1.0, 0.0)));
		if ((int1 <= 11)) {
			ChangeToStandardFaction(object3, sub2(sub1()));
		}
		if ((int1 > 16)) {
			DestroyObject(object3, 0.0, 0, 0.0, 0);
		}
		(int1++);
		object3 = GetObjectByTag(string1, int1);
		string3 = IntToString(int1);
	}
	AssignCommand(oHk51cs, JumpToObject(GetObjectByTag((sub1() + "L"), 0), 1));
	DelayCommand(1.0, AssignCommand(oHk51cs, ActionPlayAnimation(19, 1.0, 0.0)));
	AssignCommand(oHK51_Door, ActionCloseDoor(oHK51_Door));
}


void main() {
	object oHk51cs = GetObjectByTag("hk51cs", 0);
	string string1 = "hk51_1";
	int int1 = 0;
	object object3 = GetObjectByTag(string1, 0);
	int nGlobal = GetGlobalNumber("299TEL_HK51_Core");
	string string2;
	string string3 = IntToString(int1);
	if ((nGlobal == 1)) {
		string2 = "WP_HK51_LINE_";
	}
	else {
		string2 = "WP_HK51_NME_";
	}
	while ((object3 != OBJECT_INVALID)) {
		AssignCommand(object3, ActionForceMoveToObject(GetObjectByTag((string2 + string3), 0), 0, 0.1, 15.0));
		DelayCommand(1.5, AssignCommand(object3, ActionPlayAnimation(19, 1.0, 0.0)));
		SendMessageToPC(GetFirstPC(), ((string2 + string3) + " is what's showing."));
		(int1++);
		object3 = GetObjectByTag(string1, int1);
		string3 = IntToString(int1);
	}
	AssignCommand(oHk51cs, JumpToObject(GetObjectByTag((string2 + "L"), 0), 1));
	DelayCommand(1.0, AssignCommand(oHk51cs, ActionPlayAnimation(19, 1.0, 0.0)));
}


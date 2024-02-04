void main() {
	int int1 = 0;
	string string1 = "hk51_1";
	object object1 = GetObjectByTag(string1, int1);
	object oHk51cs = GetObjectByTag("hk51cs", 0);
	string string2 = IntToString(int1);
	while ((object1 != OBJECT_INVALID)) {
		AssignCommand(object1, JumpToObject(GetObjectByTag(("WP_HK51_NME_" + string2), 0), 1));
		(int1++);
		object1 = GetObjectByTag(string1, int1);
		string2 = IntToString(int1);
	}
	AssignCommand(oHk51cs, JumpToObject(GetObjectByTag("WP_HK51_NME_L", 0), 1));
}
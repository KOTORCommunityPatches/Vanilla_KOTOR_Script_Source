void main() {
	int int1 = 0;
	string string1 = "hk51_1";
	object object1 = GetObjectByTag(string1, int1);
	object oHk51cs = GetObjectByTag("hk51cs", 0);
	while ((object1 != OBJECT_INVALID)) {
		AssignCommand(object1, ActionForceMoveToObject(GetObjectByTag("WP_HK51_LINE_L", 0), 0, 0.1, 30.0));
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
	AssignCommand(oHk51cs, ActionForceMoveToObject(GetObjectByTag("WP_HK51_LINE_L", 0), 0, 0.1, 30.0));
}
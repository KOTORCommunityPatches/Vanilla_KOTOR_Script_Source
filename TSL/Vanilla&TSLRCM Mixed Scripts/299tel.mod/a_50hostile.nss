void main() {
	int int1 = 0;
	if ((GetGlobalNumber("000_HK_Memory") == 2)) {
		string string1 = "hk50";
		object object1 = GetObjectByTag(string1, int1);
		while ((object1 != OBJECT_INVALID)) {
			ChangeToStandardFaction(object1, 1);
			SetLockOrientationInDialog(object1, 1);
			(int1++);
			object1 = GetObjectByTag(string1, int1);
		}
	}
}


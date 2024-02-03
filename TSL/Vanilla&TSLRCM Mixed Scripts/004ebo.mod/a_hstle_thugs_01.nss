// Prototypes
void sub1();

void sub1() {
	int int1 = 0;
	string string1 = "REThug5";
	object object1 = GetObjectByTag(string1, int1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 1);
		SetLockOrientationInDialog(object1, 3);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}

void main() {
	sub1();
	int int1 = 0;
	string string1 = "REThug4";
	object object1 = GetObjectByTag(string1, int1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 1);
		SetLockOrientationInDialog(object1, 1);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}


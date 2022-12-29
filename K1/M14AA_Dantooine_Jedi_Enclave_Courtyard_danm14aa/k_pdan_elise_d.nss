void sub1(string stringParam1, int intParam2, int intParam3, int intParam4) {
	int int1 = 1;
	object object1;
	int int2;
	object object2 = OBJECT_SELF;
	if ((intParam2 > intParam3)) {
		int1 = (-1);
	}
	int2 = (intParam2 - int1);
	while (((abs((intParam3 - int2)) > 0) && (abs((intParam3 - int2)) <= abs(((intParam3 - intParam2) + 1))))) {
		object1 = GetObjectByTag((stringParam1 + IntToString((int2 + int1))), 0);
		if (GetIsObjectValid(object1)) {
			ActionForceMoveToObject(object1, intParam4, 3.0, 5.0);
		}
		int2 = (int2 + int1);
	}
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	SetCommandable(0, OBJECT_SELF);
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 10:
			sub1("dan14aa_wp_elise", 1, 6, 1);
			break;
		case 20:
			sub1("dan14aa_wp_elise", 7, 7, 1);
			break;
		case 30:
			DelayCommand(0.5, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", ""));
			break;
	}
}

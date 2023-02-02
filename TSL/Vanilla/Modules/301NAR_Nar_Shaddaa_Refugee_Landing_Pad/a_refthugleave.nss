void main() {
	object oSW_EXIT = GetWaypointByTag("SW_EXIT");
	int int1 = 0;
	string string1 = "ExchangeThug3";
	object object3 = GetObjectByTag(string1, int1);
	while ((object3 != OBJECT_INVALID)) {
		AssignCommand(object3, ActionMoveToObject(oSW_EXIT, 0, 1.0));
		DelayCommand(2.5, DestroyObject(object3, 0.0, 0, 0.0, 0));
		(int1++);
		object3 = GetObjectByTag(string1, int1);
	}
	int1 = 0;
	string1 = "ExchangeThug4";
	object3 = GetObjectByTag(string1, int1);
	while ((object3 != OBJECT_INVALID)) {
		AssignCommand(object3, ActionMoveToObject(oSW_EXIT, 0, 1.0));
		DelayCommand(2.5, DestroyObject(object3, 0.0, 0, 0.0, 0));
		(int1++);
		object3 = GetObjectByTag(string1, int1);
	}
}

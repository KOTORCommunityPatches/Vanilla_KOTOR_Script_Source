void main() {
	string string1;
	object object1;
	if ((GetTag(OBJECT_SELF) == "se_door")) {
		string1 = "sw_door";
	}
	else {
		string1 = "se_door";
	}
	object1 = GetObjectByTag(string1, 0);
	DelayCommand(0.1, AssignCommand(object1, ActionCloseDoor(object1)));
}

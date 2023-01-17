void main() {
	if (((GetGlobalNumber("101PER_Align_Check") == 1) && (!GetLocalBoolean(OBJECT_SELF, 30)))) {
		ShowTutorialWindow(69);
		SetLocalBoolean(OBJECT_SELF, 30, 1);
	}
	if (((GetGlobalNumber("101PER_Align_Check") == 2) && (!GetLocalBoolean(OBJECT_SELF, 30)))) {
		ShowTutorialWindow(68);
		SetLocalBoolean(OBJECT_SELF, 30, 1);
	}
}


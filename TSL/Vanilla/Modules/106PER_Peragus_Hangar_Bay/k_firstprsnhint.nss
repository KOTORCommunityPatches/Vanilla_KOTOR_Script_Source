void main() {
	if ((!GetLocalBoolean(OBJECT_SELF, 30))) {
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		ShowTutorialWindow(44);
	}
}

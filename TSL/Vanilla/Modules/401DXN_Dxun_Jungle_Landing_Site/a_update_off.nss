void main() {
	DelayCommand(1.0, SetForceAlwaysUpdate(OBJECT_SELF, 0));
	DelayCommand(1.1, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0));
}

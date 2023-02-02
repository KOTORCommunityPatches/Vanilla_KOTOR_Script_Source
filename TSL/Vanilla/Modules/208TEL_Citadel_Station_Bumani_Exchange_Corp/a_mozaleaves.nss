void main() {
	AssignCommand(OBJECT_SELF, ActionMoveToObject(GetObjectByTag("wp_mozaap", 0), 0, 1.0));
	DelayCommand(3.0, DestroyObject(OBJECT_SELF, 0.0, 1, 0.0, 0));
}

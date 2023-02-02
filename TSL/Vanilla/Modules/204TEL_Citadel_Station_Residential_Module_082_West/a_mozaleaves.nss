void main() {
	AssignCommand(OBJECT_SELF, ActionMoveToObject(GetObjectByTag("wp_mozaap", 0), 0, 1.0));
	DelayCommand(3.0, AssignCommand(OBJECT_SELF, ActionJumpToObject(GetObjectByTag("wp_moza", 0), 1)));
}

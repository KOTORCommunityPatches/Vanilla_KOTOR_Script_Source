void main() {
	object oKavar = GetObjectByTag("kavar", 0);
	AssignCommand(oKavar, ActionMoveToObject(GetObjectByTag("wp_kavar_walk1", 0), 0, 1.0));
}
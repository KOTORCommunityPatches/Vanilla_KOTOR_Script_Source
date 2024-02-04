void main() {
	object oAtton = GetObjectByTag("atton", 0);
	AssignCommand(oAtton, ClearAllActions());
	AssignCommand(oAtton, ActionMoveToObject(GetObjectByTag("wp_attonwindow", 0), 0, 1.0));
}
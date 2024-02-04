void main() {
	object oTr_window = GetObjectByTag("tr_window", 0);
	SetLocalBoolean(oTr_window, 30, 1);
	AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_playerwindow", 0), 0, 1.0));
	AssignCommand(OBJECT_SELF, ActionMoveToObject(GetObjectByTag("wp_attonwindow", 0), 0, 1.0));
}
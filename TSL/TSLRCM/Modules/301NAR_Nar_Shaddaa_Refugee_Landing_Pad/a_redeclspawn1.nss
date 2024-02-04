void main() {
	object oWP_RE_1_1 = GetObjectByTag("WP_RE_1_1", 0);
	object oWP_RE_1_2 = GetObjectByTag("WP_RE_1_2", 0);
	object oWP_RE_2_1 = GetObjectByTag("WP_RE_2_1", 0);
	object oWP_RE_2_2 = GetObjectByTag("WP_RE_2_2", 0);
	object oREThug1 = GetObjectByTag("REThug1", 0);
	AssignCommand(oREThug1, ActionJumpToObject(oWP_RE_1_1, 1));
	CreateObject(1, "g_blkvulkgang005", GetLocation(oWP_RE_2_1), 0);
	object object12 = GetObjectByTag("REThug1", 0);
	object oRECapt = GetObjectByTag("RECapt", 0);
	AssignCommand(object12, ActionMoveToObject(oWP_RE_1_2, 0, 1.0));
	AssignCommand(oRECapt, ActionMoveToObject(oWP_RE_2_2, 0, 1.0));
}
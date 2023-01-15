void main() {
	object oWP_RE_3_1 = GetObjectByTag("WP_RE_3_1", 0);
	object oWP_RE_3_2 = GetObjectByTag("WP_RE_3_2", 0);
	object oWP_RE_4_1 = GetObjectByTag("WP_RE_4_1", 0);
	object oWP_RE_4_2 = GetObjectByTag("WP_RE_4_2", 0);
	CreateObject(1, "g_blkvulkgang006", GetLocation(oWP_RE_3_1), 0);
	CreateObject(1, "g_blkvulkgang007", GetLocation(oWP_RE_4_1), 0);
	object oREThug2 = GetObjectByTag("REThug2", 0);
	object oREThug3 = GetObjectByTag("REThug3", 0);
	AssignCommand(oREThug2, ClearAllActions());
	AssignCommand(oREThug3, ClearAllActions());
	AssignCommand(oREThug2, ActionMoveToObject(oWP_RE_3_2, 0, 1.0));
	AssignCommand(oREThug3, ActionMoveToObject(oWP_RE_4_2, 0, 1.0));
}


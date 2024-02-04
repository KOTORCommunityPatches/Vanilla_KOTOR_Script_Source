void main() {
	object oZhugCut3 = GetObjectByTag("ZhugCut3", 0);
	object oWP_ZHUG_CANTINA = GetObjectByTag("WP_ZHUG_CANTINA", 0);
	ClearAllActions();
	AssignCommand(oZhugCut3, ActionMoveToObject(oWP_ZHUG_CANTINA, 1, 1.0));
}
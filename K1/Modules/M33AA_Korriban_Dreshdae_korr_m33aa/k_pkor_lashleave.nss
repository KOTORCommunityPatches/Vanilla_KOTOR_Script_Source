void main() {
	
	object oLash = GetObjectByTag("kor33_lashowe", 0);
	object oMook1 = GetObjectByTag("kor33_lasfriend1", 0);
	object oMook2 = GetObjectByTag("kor33_lasfriend2", 0);
	object oWP_Lash = GetObjectByTag("k33a_way_lashowe", 0);
	object oWP_Mook1 = GetObjectByTag("k33a_way_lashhn1", 0);
	object oWP_Mook2 = GetObjectByTag("k33a_way_lashhn2", 0);
	object oWP_Exit = GetObjectByTag("k33_way_yuthuraexit", 0);
	
	ActionPauseConversation();
	
	AssignCommand(oMook1, ActionMoveToObject(oWP_Mook2, 0, 1.0));
	DelayCommand(0.5, ActionMoveToObject(oWP_Lash, 0, 1.0));
	DelayCommand(1.1, AssignCommand(oMook2, ActionMoveToObject(oWP_Mook1, 0, 1.0)));
	DelayCommand(5.5, ClearAllActions());
	
	DelayCommand(5.6, ActionResumeConversation());
}
void main() {
	
	object oTukQueen = GetObjectByTag("kor36_tukataquee", 0);
	object oTukMook1 = GetObjectByTag("kor36_tukatahen1", 0);
	object oTukMook2 = GetObjectByTag("kor36_tukatahen2", 0);
	object oWP_TukQueen = GetObjectByTag("k36_way_lashquee", 0);
	
	ActionPauseConversation();
	
	AssignCommand(oTukQueen, ActionMoveToObject(oWP_TukQueen, TRUE));
	DelayCommand(1.0, AssignCommand(oTukMook1, ActionMoveToObject(oWP_TukQueen, TRUE)));
	DelayCommand(2.0, AssignCommand(oTukMook2, ActionMoveToObject(oWP_TukQueen, TRUE)));
	
	ActionWait(4.0);
	ActionResumeConversation();
}
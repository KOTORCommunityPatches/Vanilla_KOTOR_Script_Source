void main() {
	
	object oYuthura = GetObjectByTag("kor35_yuthura", 0);
	object oLashowe = GetObjectByTag("kor35_lashowe", 0);
	object oMekel = GetObjectByTag("kor35_mekel", 0);
	object oShaardan = GetObjectByTag("kor35_shaardan", 0);
	object oHijata = GetObjectByTag("kor35_hijata", 0);
	object oWP_Yuth = GetObjectByTag("k35_way_yuthleav", 0);
	object oWP_Lash = GetObjectByTag("k35_way_lashleav", 0);
	object oWP_Mek = GetObjectByTag("k35_way_mekleave", 0);
	object oWP_Shaa = GetObjectByTag("k35_way_shaaleav", 0);
	object oWP_Hij = GetObjectByTag("k35_way_hijleave", 0);
	
	ActionPauseConversation();
	
	AssignCommand(oYuthura, ActionMoveToObject(oWP_Yuth));
	AssignCommand(oLashowe, ActionMoveToObject(oWP_Lash));
	AssignCommand(oMekel, ActionMoveToObject(oWP_Mek));
	AssignCommand(oShaardan, ActionMoveToObject(oWP_Shaa));
	AssignCommand(oHijata, ActionMoveToObject(oWP_Hij));
	
	ActionWait(3.0);
	
	SetLockOrientationInDialog(OBJECT_SELF, FALSE);
	SetLockHeadFollowInDialog(OBJECT_SELF, FALSE);
	
	ActionResumeConversation();
}
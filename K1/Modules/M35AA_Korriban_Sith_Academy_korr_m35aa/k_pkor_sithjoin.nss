void main() {
	SetGlobalBoolean("KOR_UTHAR_TALK", 1);
	ActionPauseConversation();
	object oPC = GetFirstPC();
	object oYuthura = GetObjectByTag("kor35_yuthura", 0);
	object oLashowe = GetObjectByTag("kor35_lashowe", 0);
	object oMekel = GetObjectByTag("kor35_mekel", 0);
	object oShaardan = GetObjectByTag("kor35_shaardan", 0);
	object oHijata = GetObjectByTag("kor35_hijata", 0);
	object oWP_Yuth = GetObjectByTag("k35_way_yuthjoin", 0);
	object oWP_Lash = GetObjectByTag("k35_way_lashjoin", 0);
	object oWP_Meke = GetObjectByTag("k35_way_mekejoin", 0);
	object oWP_Shaa = GetObjectByTag("k35_way_shaajoin", 0);
	object oWP_Hija = GetObjectByTag("k35_way_hijajoin", 0);
	AssignCommand(oYuthura, ActionMoveToObject(oWP_Yuth));
	AssignCommand(oLashowe, ActionMoveToObject(oWP_Lash));
	AssignCommand(oMekel, ActionMoveToObject(oWP_Meke));
	AssignCommand(oShaardan, ActionMoveToObject(oWP_Shaa));
	AssignCommand(oHijata, ActionMoveToObject(oWP_Hija));
	ActionWait(3.0);
	ActionResumeConversation();
}
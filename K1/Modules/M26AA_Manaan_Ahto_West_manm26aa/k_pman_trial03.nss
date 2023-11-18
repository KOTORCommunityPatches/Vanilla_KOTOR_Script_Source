void main() {
	
	object oSunry = GetObjectByTag("man26_sunry", 0);
	object oElora = GetObjectByTag("man26_elora", 0);
	object oGuard = GetObjectByTag("man26_selguard", 0);
	object oWP_Elora = GetObjectByTag("man26a_eloraleave", 0);
	object oWP_Sunry = GetObjectByTag("man26a_sunryleave", 0);
	object oDoor = GetObjectByTag("man26aa_door04", 0);
	
	AssignCommand(oDoor, ActionOpenDoor(oDoor));
	AssignCommand(oSunry, ActionForceMoveToObject(oWP_Sunry));
	AssignCommand(oElora, ActionForceMoveToObject(oWP_Elora));
	
	ActionPauseConversation();
	ActionWait(5.0);
	ActionResumeConversation();
	
	DelayCommand(1.0, SetGlobalFadeOut(0.0, 4.0));
}

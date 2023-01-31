void main() {
	
	object oBastila = GetObjectByTag("bastila", 0);
	object oMalak = GetObjectByTag("darthmalak400", 0);
	talent tSaberThrow = TalentSpell(FORCE_POWER_LIGHT_SABER_THROW);
	
	AssignCommand(oBastila, ActionUseTalentOnObject(tSaberThrow, oMalak));
	
	DelayCommand(1.0, SetDialogPlaceableCamera(30));
	
	ActionPauseConversation();
	ActionWait(1.9);
	ActionResumeConversation();
}
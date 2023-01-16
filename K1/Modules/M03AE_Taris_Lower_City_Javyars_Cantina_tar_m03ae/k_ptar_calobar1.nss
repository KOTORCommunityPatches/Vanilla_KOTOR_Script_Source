void main() {
	
	object oTaproomvic033 = GetObjectByTag("Taproomvic033", 0);
	talent talFeat = TalentFeat(FEAT_SNIPER_SHOT);
	
	ActionPauseConversation();
	AssignCommand(oTaproomvic033, ClearAllActions());
	AssignCommand(oTaproomvic033, ActionMoveToObject(GetObjectByTag("tar03_wpflee", 0), 1, 1.0));
	DelayCommand(3.0, ActionUseTalentOnObject(talFeat, oTaproomvic033));
}
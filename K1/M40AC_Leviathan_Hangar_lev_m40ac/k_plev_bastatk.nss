void main() {
	
	object oMalak = GetObjectByTag("darthmalak400", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	
	CreateItemOnObject("bast_temp_saber", oBastila, 1);
	
	ActionPauseConversation();
	ActionWait(5.0);
	
	AssignCommand(oMalak, ClearAllActions());
	
	CancelCombat(oBastila);
	
	DelayCommand(1.0, AssignCommand(oMalak, CutsceneAttack(oBastila, 115, ATTACK_RESULT_HIT_SUCCESSFUL, 0)));
	DelayCommand(0.5, AssignCommand(oBastila, ActionEquipItem(GetItemPossessedBy(oBastila, "bast_temp_saber"), INVENTORY_SLOT_RIGHTWEAPON, TRUE)));
	DelayCommand(0.8, SetLightsaberPowered(oBastila, TRUE, TRUE, FALSE));
	
	ActionResumeConversation();
}

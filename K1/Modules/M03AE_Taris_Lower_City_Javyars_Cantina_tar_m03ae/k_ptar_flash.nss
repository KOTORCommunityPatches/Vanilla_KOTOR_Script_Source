void main() {

	object oRodian = GetObjectByTag("taproomvic031", 0);
	object oTwilek1 = GetObjectByTag("taproomvic032", 0);
	object oTwilek2 = GetObjectByTag("taproomvic033", 0);
	object oGren = GetObjectByTag("flash_gren", 0);
	location lGren = GetLocation(GetObjectByTag("GRENADE_WP", 0));
	object oCalo = GetObjectByTag("calo031", 0);
	object oBlaster = GetItemPossessedBy(oCalo, "G_W_HVYBLSTR01");
	
	ActionPauseConversation();
	
	DelayCommand(0.5, PlaySound("cs_grenbeep"));
	DelayCommand(1.0, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_FNF_GRENADE_ION), lGren));
	DelayCommand(0.1, AssignCommand(oCalo, ActionEquipItem(oBlaster, INVENTORY_SLOT_LEFTWEAPON)));
	DelayCommand(1.2, DestroyObject(oGren));
	
	DelayCommand(1.2, ActionResumeConversation());
	
	DelayCommand(1.2, AssignCommand(oTwilek1, PlaySound("n_swoopgang_hit1")));
}
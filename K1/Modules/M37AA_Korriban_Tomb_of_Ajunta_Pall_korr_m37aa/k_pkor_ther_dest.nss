void main() {
	
	object oPC = GetFirstPC();
	object oPad1 = GetItemPossessedBy(oPC, "kor37_datapad01");
	object oPad2 = GetItemPossessedBy(oPC, "kor37_datapad02");
	object oTherObel = GetObjectByTag("kor37_therangen", 0);
	effect eVFX = EffectVisualEffect(VFX_FNF_GRENADE_PLASMA);
	effect eDeath = EffectDeath();
	location lTherObel = GetLocation(oTherObel);
	
	ActionPauseConversation();
	
	if (GetIsObjectValid(oPad1))
		{
			DestroyObject(oPad1);
		}
	if (GetIsObjectValid(oPad2))
		{
			DestroyObject(oPad2);
		}
	
	ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eVFX, lTherObel, 0.0);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, eDeath, oTherObel, 0.0);
	
	PlayRumblePattern(13);
	
	ActionWait(2.0);
	ActionResumeConversation();
}
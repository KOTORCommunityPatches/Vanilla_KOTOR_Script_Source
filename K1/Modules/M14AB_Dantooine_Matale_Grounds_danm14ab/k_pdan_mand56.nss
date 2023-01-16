void main() {
	
	object oVictim = GetObjectByTag("dan14_victim", 0);
	object oMando = GetObjectByTag("dan14ab_mand01", 0);
	effect efHit = EffectAssuredHit();
	
	ChangeToStandardFaction(oVictim, STANDARD_FACTION_FRIENDLY_1);
	ChangeToStandardFaction(oMando, STANDARD_FACTION_FRIENDLY_2);
	ActionPauseConversation();
	ApplyEffectToObject(DURATION_TYPE_TEMPORARY, efHit, oMando, 5.0);
	ActionAttack(oVictim, FALSE);
}
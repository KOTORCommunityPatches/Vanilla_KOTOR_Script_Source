void main() {
	
	object oSith = GetObjectByTag("man27_sithmas", 0);
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser)
		{
			case 10:
				CutsceneAttack(oSith, 217, ATTACK_RESULT_DEFLECTED, 0);
			break;
			
			case 15:
				CutsceneAttack(oSith, 218, ATTACK_RESULT_DEFLECTED, 0);
			break;
			
			case 20:
				CutsceneAttack(oSith, 219, ATTACK_RESULT_DEFLECTED, 0);
			break;
			
			case 25:
				ChangeToStandardFaction(oSith, STANDARD_FACTION_FRIENDLY_1);
				ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHealForcePoints(50), oSith);
				CancelCombat(OBJECT_SELF);
				CancelCombat(oSith);
			break;
		}
}

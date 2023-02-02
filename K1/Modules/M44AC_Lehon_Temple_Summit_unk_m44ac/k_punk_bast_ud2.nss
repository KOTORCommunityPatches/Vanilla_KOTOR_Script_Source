// Byte code does not match
void FakeForcePush(object oNPC) {
	PlaySound("v_useforce");
	ActionCastFakeSpellAtObject(FORCE_POWER_FORCE_WAVE, oNPC);
	DelayCommand(0.4, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_FORCE_WAVE), GetPartyMemberByIndex(0), 0.0));
	DelayCommand(0.4, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_FORCE_WAVE), GetObjectByTag("Jolee", 0), 0.0));
	DelayCommand(0.4, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_FORCE_WAVE), GetObjectByTag("Juhani", 0), 0.0));
	DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectForcePushTargeted(GetLocation(OBJECT_SELF), 0), GetPartyMemberByIndex(0), 0.1));
	DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectForcePushTargeted(GetLocation(OBJECT_SELF), 0), GetObjectByTag("Jolee", 0), 0.1));
	DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectForcePushTargeted(GetLocation(OBJECT_SELF), 0), GetObjectByTag("Juhani", 0), 0.1));
	DelayCommand(1.0, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
}

void ClearParty() {
	SetPartyLeader(NPC_PLAYER);
	AssignCommand(GetFirstPC(), ClearAllEffects());
	AssignCommand(GetObjectByTag("Jolee", 0), ClearAllEffects());
	AssignCommand(GetObjectByTag("Juhani", 0), ClearAllEffects());
	RemovePartyMember(NPC_JOLEE);
	RemovePartyMember(NPC_JUHANI);
}

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{

		}
	else if (nUser == 1002) // PERCEIVE
		{

		}
	else if (nUser == 1003) // END OF COMBAT
		{

		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ATTACKED
		{

		}
	else if (nUser == 1006) // DAMAGED
		{
			if (GetMaxHitPoints(OBJECT_SELF) - GetCurrentHitPoints(OBJECT_SELF)) > 150)
				{
					ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectResurrection(), GetFirstPC(), 0.0);
					
					NoClicksFor(5.0);
					
					object oAttacker = GetLastAttacker(OBJECT_SELF);
					
					ClearAllActions();
					DelayCommand(0.3, ClearParty());
					
					ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
					
					DelayCommand(0.5, CancelCombat(GetFirstPC()));
					DelayCommand(0.5, CancelCombat(GetObjectByTag("Jolee", 0)));
					DelayCommand(0.5, CancelCombat(GetObjectByTag("Juhani", 0)));
					DelayCommand(0.5, CancelCombat(OBJECT_SELF));
					DelayCommand(0.5, ClearAllEffects());
					
					DelayCommand(0.6, FakeForcePush(oAttacker));
				}
		}
	else if (nUser == 1007) // DEATH
		{

		}
	else if (nUser == 1008) // DISTURBED
		{

		}
	else if (nUser == 1009) // BLOCKED
		{

		}
	else if (nUser == 1010) // SPELL CAST AT
		{

		}
}

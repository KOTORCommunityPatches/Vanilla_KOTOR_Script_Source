#include "k_inc_utility"

void PushParty(object oTarget) {
	object oPC = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	CancelCombat(oPC);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForcePushTargeted(GetLocation(oTarget)), oPC);
	if (GetIsObjectValid(oPM1))
		{
			CancelCombat(oPM1);
			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForcePushTargeted(GetLocation(oTarget)), oPM1);
		}
	if (GetIsObjectValid(oPM2))
		{
			CancelCombat(oPM2);
			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectForcePushTargeted(GetLocation(oTarget)), oPM2);
		}
	CancelCombat(oTarget);
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
			if (GetLastSpeaker() == GetPartyMemberByIndex(0) && GetIsInCombat(GetPartyMemberByIndex(0)) == FALSE)
				{
					object oInvis = GetObjectByTag("invis_rulan_conv", 0);
					AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
				}
		}
	else if (nUser == 1005) // ATTACKED
		{

		}
	else if (nUser == 1006) // DAMAGED
		{
			int nHP = (GetMaxHitPoints(OBJECT_SELF) / 2);
			object oInvis = GetObjectByTag("invis_ter_conv", 0);
			
			if (GetCurrentHitPoints(OBJECT_SELF) <= nHP)
				{
					ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_FRIENDLY_2);
					PushParty(OBJECT_SELF);
					DelayCommand(0.2, ActionSurrenderToEnemies());
					DelayCommand(0.4, ClearAllEffects());
					DelayCommand(1.0, AssignCommand(oInvis, ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
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
	else if (nUser == HOSTILE_RETREAT)
		{
			UT_ReturnToBase("wp_homebase");
		}
}
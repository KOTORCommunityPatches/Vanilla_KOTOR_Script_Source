// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.
// Used a Star Forge include that does not exist in the shipped game files.

#include "k_inc_generic"
#include "k_inc_utility"
#include "k_inc_debug"

void SeekJediFuel() {
	object oDrain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
	int nCurFP = GetCurrentForcePoints(OBJECT_SELF);
	object oInvis1 = GetNearestObjectByTag("sta_jedi_conv", OBJECT_SELF, 1);
	int nTalk = GetGlobalNumber("STA_MALAK_JEDI");
	object oPC = GetFirstPC();
	object oInvis2 = GetObjectByTag("sta_invis_conv_2", 0);
	string sName = GetName(oDrain);
	object oCaptive = GetObjectByTag(("sta_plc_captive" + sName), 0);
	
	if (GetIsObjectValid(oDrain))
		{
			ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
			SetGlobalBoolean("STA_MALAK_DRAIN", TRUE);
			ChangeToStandardFaction(oCaptive, STANDARD_FACTION_NEUTRAL);
			DelayCommand(0.3, ClearAllActions());
			DelayCommand(0.4, SurrenderRetainBuffs());
			DelayCommand(0.4, SetCommandable(FALSE, OBJECT_SELF));
			DelayCommand(0.5, CancelCombat(oPC));
			DelayCommand(0.5, CancelCombat(OBJECT_SELF));
			
			if (GetDistanceToObject(oDrain) <= 5.0)
				{
					DelayCommand(1.0, AssignCommand(oPC, ClearAllActions()));
					
					if (nTalk == 0)
						{
							DelayCommand(1.0, AssignCommand(oInvis2, ActionStartConversation(oInvis2, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
						}
						else
							{
								DelayCommand(1.0, AssignCommand(oInvis1, ActionStartConversation(oInvis1, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
							}
				}
				else
					{
						DelayCommand(1.0, SetCommandable(TRUE, OBJECT_SELF));
						DelayCommand(1.0, ActionMoveToObject(oDrain, TRUE));
						DelayCommand(1.0, SetCommandable(FALSE, OBJECT_SELF));
					}
		}
}

int PCHalfHealth() {
	int nCurHP = GetCurrentHitPoints(GetFirstPC());
	int nMaxHP = GetMaxHitPoints(GetFirstPC());
	
	if (nCurHP < (nMaxHP / 2))
		{
			return TRUE;
		}
		else
			{
				return FALSE;
			}
}

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	object oPC = GetFirstPC();
	object oDrain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	
	if (nUser == 1001) // HEARTBEAT
		{
			int nNum = 0;
			int nCurFP = GetCurrentForcePoints(OBJECT_SELF);
			int nTalk = GetGlobalNumber("STA_MALAK_TALK");
			object oInvis1 = GetNearestObjectByTag("sta_jedi_conv", OBJECT_SELF, 1);
			int nDrain = GetGlobalBoolean("STA_MALAK_DRAIN");
			
			if (nTalk > 0 && !GetIsInConversation(oInvis1) && !GetIsInConversation(OBJECT_SELF) && nDrain != FALSE)
				{
					if (nCurFP <= 50 && !PCHalfHealth())
						{
							SeekJediFuel();
						}
						else if (GetDistanceToObject(oPC) > 15.0)
							{
								ActionMoveToObject(oPC, TRUE, 13.0);
								ActionDoCommand(GN_DetermineCombatRound(oPC));
							}
				}
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
			int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
			int nCurFP = GetCurrentForcePoints(OBJECT_SELF);
			object oInvis2 = GetObjectByTag("sta_invis_conv_2", 0);
			
			if (nCurHP <= 100 || nCurFP <= 50)
				{
					SeekJediFuel();
				}
				else if (nCurHP <= 10 && !GetIsInConversation(OBJECT_SELF))
					{
						ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
						DelayCommand(0.4, ClearAllActions());
						DelayCommand(0.4, SurrenderRetainBuffs());
						DelayCommand(0.4, CancelCombat(oPC));
						DelayCommand(0.4, CancelCombat(OBJECT_SELF));
						DelayCommand(0.4, PlayAnimation(ANIMATION_LOOPING_KNEEL_TALK_SAD, 1.0, 999.0));
						DelayCommand(0.5, SetCommandable(FALSE, OBJECT_SELF));
						DelayCommand(3.5, AssignCommand(oInvis2, ActionStartConversation(oInvis2, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
					}
		}
	else if (nUser == 1007) // DEATH
		{
			SetGlobalBoolean("STA_MALAK_DEAD", TRUE);
			
			object oDoor1 = GetObjectByTag("k45_door_malak", 0);
			
			SetLocked(oDoor1, FALSE);
			
			object oDoor2 = GetObjectByTag("k45_door_end", 0);
			
			SetLocked(oDoor2, FALSE);
			
			object oPC = GetFirstPC();
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

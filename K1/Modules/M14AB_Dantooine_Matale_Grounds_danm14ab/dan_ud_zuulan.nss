// Byte code does not match

#include "k_inc_utility"
 
 void EndCombat(object oNPC) {
 	
 	object oPM0 = GetPartyMemberByIndex(0);
 	object oPM1 = GetPartyMemberByIndex(1);
 	object oPM2 = GetPartyMemberByIndex(2);
 	object oDroid1 = GetObjectByTag("dan_cut_droid1", 0);
 	object oDroid2 = GetObjectByTag("dan_cut_droid2", 0);
 	
 	CancelCombat(oNPC);
 	CancelCombat(oPM0);
 	
 	if (GetIsObjectValid(oPM1))
 		{
 			CancelCombat(oPM1);
 		}
 	
 	if (GetIsObjectValid(oPM2))
 		{
 			CancelCombat(oPM2);
 		}
 	
 	if (GetIsObjectValid(oDroid1))
 		{
 			AssignCommand(oDroid1, ActionSurrenderToEnemies());
 			CancelCombat(oDroid1);
 		}
 	
 	if (GetIsObjectValid(oDroid2))
 		{
 			AssignCommand(oDroid2, ActionSurrenderToEnemies());
 			CancelCombat(oDroid2);
 		}
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
 			int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
 			int nMinHP = (GetMaxHitPoints(OBJECT_SELF) / 5);
 			object oPC = GetFirstPC();
 			object oZuulan = GetObjectByTag("dan_cut_zuulan", 0);
 			object oDroid1 = GetObjectByTag("dan_cut_droid1", 0);
 			object oDroid2 = GetObjectByTag("dan_cut_droid2", 0);
 			
 			if (nCurHP <= nMinHP && UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE && !GetIsInConversation(OBJECT_SELF))
 				{
 					UT_SetTalkedToBooleanFlag(oZuulan, 1);
 					
 					ChangeToStandardFaction(oDroid1, STANDARD_FACTION_FRIENDLY_2);
 					ChangeToStandardFaction(oDroid2, STANDARD_FACTION_FRIENDLY_2);
 					ChangeToStandardFaction(oZuulan, STANDARD_FACTION_FRIENDLY_2);
 					
 					EndCombat(oZuulan);
 					
 					NoClicksFor(1.2);
 					
 					DelayCommand(0.2, AssignCommand(oZuulan, ActionSurrenderToEnemies()));
 					DelayCommand(0.4, AssignCommand(oZuulan, ClearAllEffects()));
 					
 					DelayCommand(1.0, AssignCommand(oZuulan, ActionStartConversation(oPC, "", FALSE, 0, FALSE)));
 				}
 		}
 	else if (nUser == 1007) // DEATH
 		{
 			UT_DarkSml(GetFirstPC());
 			SetGlobalNumber("K_Geno_Zuulan", 2);
 			AddJournalQuestEntry("Geno_Zuulan", 2);
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

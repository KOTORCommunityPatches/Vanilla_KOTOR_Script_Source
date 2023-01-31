// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_generic"
 
 void main() {
     
     int nUser = GetUserDefinedEventNumber();
 
     if(nUser == 1001) //HEARTBEAT
 		{
 
 		}
     else if(nUser == 1002) // PERCEIVE
         {
             int nGlobal = GetGlobalNumber("K_XOR_AMBUSH");
             
             if (nGlobal == 1)
                 {
                     NoClicksFor(1.2);
                     DelayCommand(1.0, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
                 }
         }
     else if(nUser == 1003) // END OF COMBAT
 		{
 
 		}
     else if(nUser == 1004) // ON DIALOGUE
 		{
 
 		}
     else if(nUser == 1005) // ATTACKED
 		{
 
 		}
     else if(nUser == 1006) // DAMAGED
         {
             object oThugA = GetObjectByTag("kas_xor2", 0);
             object oThugB = GetObjectByTag("kas_xor3", 0);
             
             if (GetCurrentHitPoints(OBJECT_SELF) <= 20 && !GetIsObjectValid(oThugA) && !GetIsObjectValid(oThugB))
                 {
                     ClearAllActions();
                     DelayCommand(0.4, SurrenderToEnemies());
                     DelayCommand(0.5, CancelCombat(GetPartyMemberByIndex(0)));
                     DelayCommand(0.5, CancelCombat(GetPartyMemberByIndex(1)));
                     DelayCommand(0.5, CancelCombat(GetPartyMemberByIndex(2)));
                     DelayCommand(0.5, CancelCombat(OBJECT_SELF));
                     NoClicksFor(1.2);
                     DelayCommand(1.0, AssignCommand(GetObjectByTag("invis_xor_conv", 0), ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
                     AdjustReputation(GetFirstPC(), OBJECT_SELF, 100);
                 }
                 else
                     {
                         if (GetCurrentHitPoints(OBJECT_SELF) <= 20)
                             {
                                 UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
                                 GN_SetSpawnInCondition(SW_FLAG_AI_OFF, TRUE);
                                 ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
                                 ClearAllActions();
                                 DelayCommand(0.4, SurrenderToEnemies());
                                 DelayCommand(0.8, PlayAnimation(28, 1.0, (-1.0)));
                             }
                     }
         }
     else if(nUser == 1007) // DEATH
 		{
 
 		}
     else if(nUser == 1008) // DISTURBED
 		{
 
 		}
     else if(nUser == 1009) // BLOCKED
 		{
 
 		}
     else if(nUser == 1010) // SPELL CAST AT
 		{
 
 		}
 }
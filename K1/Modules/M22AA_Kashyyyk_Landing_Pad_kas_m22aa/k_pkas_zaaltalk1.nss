// Byte code does not match

#include "k_inc_kas"
 
 void main() {
 	
 	object oPC = GetFirstPC();
 	object oEntering = GetEnteringObject();
 	object oZaalbar = GetObjectByTag("Zaalbar", 0);
 	object oInvis = GetObjectByTag("kas22_zaalspeak1", 0);
 	object oWP_Zal = GetWaypointByTag("kas_zaalbar_wp");
 	object oWP_PC = GetWaypointByTag("kas_zaalbarpc_wp");
 	
 	if (GetIsPC(oEntering) == TRUE)
 		{
 			if (GetChuundarTalkGlobal() == FALSE && GetZaalbarTalk1Local(OBJECT_SELF) == FALSE && IsNPCPartyMember(NPC_ZAALBAR) == TRUE) {
 				SetGlobalFadeOut();
 				SetPartyLeader(NPC_PLAYER);
 				AssignCommand(oPC, ClearAllActions());
 				AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oWP_PC, TRUE)));
 				AssignCommand(oZaalbar, ClearAllActions());
 				AssignCommand(oZaalbar, DelayCommand(1.0, JumpToObject(oWP_Zal, TRUE)));
 				NoClicksFor(1.4);
 				AssignCommand(oInvis, DelayCommand(1.2, ActionStartConversation(oPC, "22aa_zaalb01_01", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 			}
 			else
 				{
 					DestroyObject(OBJECT_SELF);
 				}
 		}
 }

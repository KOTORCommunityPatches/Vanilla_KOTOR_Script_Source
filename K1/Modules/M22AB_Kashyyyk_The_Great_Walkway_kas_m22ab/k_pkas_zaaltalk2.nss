// Byte code does not match

#include "k_inc_kas"
 
 void main() {
 	
 	object oPC = GetFirstPC();
 	object oEntering = GetEnteringObject();
 	object oZaalbar = GetObjectByTag("Zaalbar", 0);
 	object oTalker = GetObjectByTag("kas22_zaalspeak2", 0);
 	object oPMWP = GetWaypointByTag("kas_zaalbar_wp2");
 	object oPCWP = GetWaypointByTag("kas_zaalbapc_wp2");
 	
 	if (GetIsPC(oEntering) == TRUE)
 		{
 			if (GetChuundarTalkGlobal() == FALSE && GetZaalbarTalk2Local(OBJECT_SELF) == FALSE && IsNPCPartyMember(NPC_ZAALBAR) == TRUE)
 				{
 					SetGlobalFadeOut();
 					SetPartyLeader(NPC_PLAYER);
 					AssignCommand(oPC, ClearAllActions());
 					AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oPCWP)));
 					AssignCommand(oZaalbar, ClearAllActions());
 					AssignCommand(oZaalbar, DelayCommand(1.5, JumpToObject(oPMWP)));
 					NoClicksFor(1.4);
 					AssignCommand(oTalker, DelayCommand(1.2, ActionStartConversation(oPC, "22aa_zaalb02_01", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 				}
 				else
 					{
 						DestroyObject(OBJECT_SELF);
 					}
 		}
 }
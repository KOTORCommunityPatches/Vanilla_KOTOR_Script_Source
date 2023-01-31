// Byte code does not match

#include "k_inc_kas"
 
 void main() {
 	
 	object oPC = GetFirstPC();
 	object oNPC;
 	object oEntering = GetEnteringObject();
 	object oInvis = GetObjectByTag("kas22_partspeak1", 0);
 	object oWP_PM = GetWaypointByTag("kas_party_wp");
 	object oWP_PC = GetWaypointByTag("kas_partypc_wp");
 	
 	if (GetZaalbarTalk1Local(OBJECT_SELF) == TRUE || GetPartyTalk1Local(OBJECT_SELF) == TRUE)
 		{
 			DestroyObject(OBJECT_SELF);
 		}
 		else if (GetIsPC(oEntering) == TRUE && GetChuundarTalkGlobal() == FALSE && GetZaalbarTalk1Local(OBJECT_SELF) == FALSE && GetPartyTalk1Local(OBJECT_SELF) == FALSE && IsNPCPartyMember(NPC_ZAALBAR) == FALSE
 				&& IsNPCPartyMember(NPC_MISSION) == TRUE || IsNPCPartyMember(NPC_CARTH) == TRUE || IsNPCPartyMember(NPC_BASTILA) == TRUE
 				|| IsNPCPartyMember(NPC_JUHANI) == TRUE || IsNPCPartyMember(NPC_CANDEROUS) == TRUE || IsNPCPartyMember(NPC_HK_47) == TRUE)
 					{
 						SetGlobalFadeOut();
 						
 						if (IsNPCPartyMember(NPC_MISSION) == TRUE)
 							{
 								oNPC = GetObjectByTag("Mission", 0);
 							}
 							else if (IsNPCPartyMember(NPC_CARTH) == TRUE)
 								{
 									oNPC = GetObjectByTag("Carth", 0);
 								}
 								else if (IsNPCPartyMember(NPC_BASTILA) == TRUE)
 									{
 										oNPC = GetObjectByTag("Bastila", 0);
 									}
 									else if (IsNPCPartyMember(NPC_JUHANI) == TRUE)
 										{
 											oNPC = GetObjectByTag("Juhani", 0);
 										}
 										else if (IsNPCPartyMember(NPC_CANDEROUS) == TRUE)
 											{
 												oNPC = GetObjectByTag("Cand", 0);
 											}
 											else if (IsNPCPartyMember(NPC_HK_47) == TRUE)
 												{
 													oNPC = GetObjectByTag("HK47", 0);
 												}
 						
 						SetPartyLeader(NPC_PLAYER);
 						
 						AssignCommand(oPC, ClearAllActions());
 						AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oWP_PC, TRUE)));
 						
 						AssignCommand(oNPC, ClearAllActions());
 						AssignCommand(oNPC, DelayCommand(1.0, JumpToObject(oWP_PM, TRUE)));
 						
 						NoClicksFor(1.4);
 						
 						AssignCommand(oInvis, DelayCommand(1.2, ActionStartConversation(oPC, "22aa_zaalb01_01", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 					}
 }
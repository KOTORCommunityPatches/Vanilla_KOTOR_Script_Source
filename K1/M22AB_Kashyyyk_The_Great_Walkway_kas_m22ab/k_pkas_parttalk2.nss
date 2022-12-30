// Byte code does not match

#include "k_inc_kas"
 
 void main() {
 	
 	object oPC = GetFirstPC();
 	object oParty;
 	object oEntering = GetEnteringObject();
 	object oTalker = GetObjectByTag("kas22_partspeak2", 0);
 	object oPMWP = GetWaypointByTag("kas_party_wp");
 	object oPCWP = GetWaypointByTag("kas_partypc_wp");
 	
 	if (GetZaalbarTalk2Local(OBJECT_SELF) == TRUE || GetPartyTalk2Local(OBJECT_SELF) == TRUE)
 		{
 			DestroyObject(OBJECT_SELF);
 		}
 		else
 			{
 				if ((GetIsPC(oEntering) == TRUE && GetChuundarTalkGlobal() == FALSE && GetZaalbarTalk2Local(OBJECT_SELF) == FALSE && GetPartyTalk2Local(OBJECT_SELF) == FALSE && IsNPCPartyMember(NPC_ZAALBAR) == FALSE) && (IsNPCPartyMember(NPC_MISSION) == TRUE || IsNPCPartyMember(NPC_CARTH) == TRUE || IsNPCPartyMember(NPC_BASTILA) == TRUE || IsNPCPartyMember(NPC_JUHANI) == TRUE))
 					{
 						SetGlobalFadeOut();
 						
 						if (IsNPCPartyMember(6) == TRUE)
 							{
 								oParty = GetObjectByTag("Mission", 0);
 							}
 							else
 								{
 									if (IsNPCPartyMember(2) == TRUE)
 										{
 											oParty = GetObjectByTag("Carth", 0);
 										}
 										else
 											{
 												if (IsNPCPartyMember(0) == TRUE)
 													{
 														oParty = GetObjectByTag("Bastila", 0);
 													}
 													else
 														{
 															if (IsNPCPartyMember(5) == TRUE)
 																{
 																	oParty = GetObjectByTag("Juhani", 0);
 																}
 														}
 											}
 								}
 						
 						SetPartyLeader(NPC_PLAYER);
 						AssignCommand(oPC, ClearAllActions());
 						AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oPCWP)));
 						AssignCommand(oParty, ClearAllActions());
 						AssignCommand(oParty, DelayCommand(1.5, JumpToObject(oPMWP)));
 						NoClicksFor(1.4);
 						AssignCommand(oTalker, DelayCommand(1.2, ActionStartConversation(oPC, "22aa_zaalb02_01", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
 					}
 			}
 }

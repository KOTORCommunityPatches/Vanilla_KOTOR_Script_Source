// Byte code does not match

#include "k_inc_utility"
 #include "k_inc_generic"
 
 void CreateNPC(int nType, string sResRef, location lLocation) {
 	object oSpwn = CreateObject(nType, sResRef, lLocation);
 }
 
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
 	location lSelf = GetLocation(OBJECT_SELF);
 
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
 			object oInvis = GetObjectByTag("invis_rulan_conv", 0);
 			AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
 		}
 	else if (nUser == 1005) // ATTACKED
 		{
 
 		}
 	else if (nUser == 1006) // DAMAGED
 		{
 			int nHP = GetMaxHitPoints(OBJECT_SELF) / 2;
 			object oInvis = GetObjectByTag("invis_ter_conv", 0);
 			
 			if (GetCurrentHitPoints(OBJECT_SELF) <= nHP && GetGlobalNumber("k_Rulan_morph") == 2)
 				{
 					SetGlobalNumber("k_Rulan_morph", 3);
 					ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_FRIENDLY_2);
 					PushParty(OBJECT_SELF);
 					ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, OBJECT_SELF), TRUE);
 					ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, OBJECT_SELF), TRUE);
 					ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1046), GetLocation(OBJECT_SELF));
 					DelayCommand(0.1, ActionSurrenderToEnemies());
 					DelayCommand(0.2, ClearAllEffects());
 					DelayCommand(0.2, DestroyObject(OBJECT_SELF));
 					AssignCommand(GetModule(), DelayCommand(0.4, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_SCREEN_SHAKE), GetFirstPC())));
 					DelayCommand(0.1, PlaySound("v_pro_afflict"));
 					AssignCommand(GetModule(), DelayCommand(0.4, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1047), GetLocation(OBJECT_SELF))));
 					AssignCommand(GetModule(), DelayCommand(0.4, CreateNPC(OBJECT_TYPE_CREATURE, "rulan_ter", lSelf)));
 					AssignCommand(GetModule(), DelayCommand(0.90000004, ChangeToStandardFaction(GetObjectByTag("rulan_ter", 0), STANDARD_FACTION_HOSTILE_1)));
 					AssignCommand(GetModule(), DelayCommand(1.0, AssignCommand(GetObjectByTag("rulan_ter", 0), GN_DetermineCombatRound(OBJECT_INVALID))));
 				}
 				else if (GetCurrentHitPoints(OBJECT_SELF) <= 10 && GetGlobalNumber("k_Rulan_morph") == 3)
 					{
 						SetGlobalNumber("k_Rulan_morph", 4);
 						ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_FRIENDLY_2);
 						PushParty(OBJECT_SELF);
 						PlaySound("c_tach_bat1");
 						ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1047), GetLocation(OBJECT_SELF));
 						DelayCommand(0.1, ActionSurrenderToEnemies());
 						DelayCommand(0.2, ClearAllEffects());
 						DelayCommand(0.2, DestroyObject(OBJECT_SELF, 0.0, TRUE));
 						AssignCommand(GetModule(), DelayCommand(0.4, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_SCREEN_SHAKE), GetFirstPC())));
 						AssignCommand(GetModule(), DelayCommand(0.4, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1047), GetLocation(OBJECT_SELF))));
 						AssignCommand(GetModule(), DelayCommand(1.4, CreateNPC(OBJECT_TYPE_CREATURE, "rulan004", lSelf)));
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
// Could not recompile

#include "k_inc_generic"
 #include "k_inc_debug"
 
 void main() {
 	
 	object oPC = GetFirstPC();
 	object oRebel1 = GetObjectByTag("kor34_sithrebel1", 0);
 	object oRebel2 = GetObjectByTag("kor34_sithrebel2", 0);
 	object oSaber = GetItemPossessedBy(OBJECT_SELF, "g_w_lghtsbr01");
 	
 	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
 	ChangeToStandardFaction(oRebel1, STANDARD_FACTION_HOSTILE_1);
 	ChangeToStandardFaction(oRebel2, STANDARD_FACTION_HOSTILE_1);
 	
 	unknown unknown1 = EventUserDefined(134);
 	SignalEvent(oKor34_sithrebel1, unknown1);
 	SignalEvent(oKor34_sithrebel2, unknown1);
 	// Presumably:
 	/*
 	SignalEvent(OBJECT_SELF, EventUserDefined(134));
 	SignalEvent(oRebel1, EventUserDefined(134));
 	SignalEvent(oRebel2, EventUserDefined(134));
 	*/
 	
 	if (GetIsObjectValid(oSaber))
 		{
 			ClearAllActions();
 			ActionEquipItem(oSaber, INVENTORY_SLOT_RIGHTWEAPON, FALSE);
 			Db_PostString("Sword valid", 10, 10, 4.0);
 		}
 		else
 			{
 				Db_PostString("Sword not valid", 10, 10, 4.0);
 			}
 	
 	DelayCommand(0.5, GN_DetermineCombatRound(oPC));
 }

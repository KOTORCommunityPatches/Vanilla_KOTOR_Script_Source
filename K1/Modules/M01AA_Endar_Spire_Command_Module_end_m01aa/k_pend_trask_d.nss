// Byte code does not match

#include "k_inc_end"
 
 void main() {
 	
 	SetCommandable(TRUE, OBJECT_SELF);
 	
 	int nUser = GetUserDefinedEventNumber();
 	int nState = GetTraskState();
 	
 	switch (nUser) {
 		case 50:
 			ClearAllActions();
 			ActionStartConversation(GetFirstPC(), "", FALSE, 0, TRUE);
 			break;
 		case 100:
 			if (nState == TRASK_MUST_GET_GEAR || nState == TRASK_TARGET_DONE || nState == TRASK_MUST_EQUIP || nState == TRASK_MUST_MAP || nState == TRASK_MUST_DROID || nState == TRASK_MUST_MAP_02 || nState == TRASK_MUST_LEVEL && GetTraskWillInitiate())
 				{
 					TalkTrask();
 				}
 			SetTraskWillInitiate(FALSE);
 			break;
 		case 110:
 			if (nState == TRASK_TARGET_DONE)
 				{
 					SetTraskState(TRASK_GEAR_DONE);
 					// Set PC to leader, initiate DLG
 					TalkTrask();
 				}
 			break;
 		case 200:
 			if (GetHasEquippedSomething())
 				{
 					SetTraskState(TRASK_EQUIP_DONE);
 					ActionStartConversation(GetFirstPC(), "", FALSE, 0, FALSE);
 				}
 			break;
 		case 300:
 			ClearAllActions();
 			ActionStartConversation(GetFirstPC(), "end_cut01", FALSE, 0, TRUE);
 			break;
 		case 400:
 			ActionWait(1.0);
 			ActionMoveToObject(GetObjectByTag("end_wp_traskdie", 0), 1, 1.0);
 			ActionDoCommand(SignalEvent(GetObjectByTag("end01_sceneobj03", 0), EventUserDefined(0)));
 			break;
 		case 500:
 			RemovePartyMember(0);
 			RemoveAvailableNPC(0);
 			// BROKEN DECOMPILE
 				{
 					object object6 = CreateItemOnObject("g_w_shortswrd01", OBJECT_SELF, 1);
 					ClearAllActions();
 					ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 0);
 					ActionEquipItem(object6, 4, 1);
 					ActionForceMoveToObject(GetObjectByTag("end_wp_traskdie2", 0), 1, 1.0, 3.0);
 				}
 			break;
 		case 600:
 			// BROKEN DECOMPILE
 			{
 				object oEnd_bandon = GetObjectByTag("end_bandon", 0);
 				ChangeToStandardFaction(OBJECT_SELF, 2);
 				ChangeToStandardFaction(oEnd_bandon, 4);
 				ActionMoveToObject(GetObjectByTag("wp_room8_03", 0), 1, 1.0);
 				ActionDoCommand(SignalEvent(GetObjectByTag("end_door07", 0), EventUserDefined(0)));
 				ActionPlayAnimation(ANIMATION_LOOPING_READY, 1.0, 10.0);
 			}
 			break;
 		case 1005:
 			if (GetTag(GetLastHostileActor(OBJECT_SELF)) == "end_droid03")
 				{
 					ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), OBJECT_SELF);
 					RemovePartyMember(0);
 					RemoveAvailableNPC(0);
 				}
 			break;
 		case 1007:
 			SignalEvent(GetObjectByTag("end_droid03", 0), EventUserDefined(10));
 			break;
 	}
 }
// Byte code does not match

#include "k_inc_end"
 
 void main() {
 	
 	if (GetGlobalBoolean("END_BRIDGE_SEALED"))
 		{
 			ActionStartConversation(GetFirstPC(), "end_bridgeseal", FALSE, 0, TRUE);
 		}
 		else if (GetGlobalNumber("END_ROOM8_DEAD") >= 2)
 			{
 					if (GetDistanceBetween(GetTrask(), GetFirstPC()) > 10.0)
 						{
 							SetGlobalFadeOut();
 							DelayCommand(0.5, SetGlobalFadeIn(0.0, 0.5));
 							
 							UT_TeleportWholeParty(GetObjectByTag("wp_end_room7_1", 0), GetObjectByTag("wp_end_room7_1", 0), OBJECT_INVALID);
 						}
 					
 					if (GetTraskState() < TRASK_COMBAT_WARNING && GN_GetWeaponType(GetFirstPC()) == 2)
 						{
 							SetTraskState(TRASK_COMBAT_WARNING);
 							
 							TalkTrask();
 						}
 						else if (GetTraskState() == TRASK_COMBAT_WARNING && GN_GetWeaponType(GetFirstPC()) == 2)
 							{
 								SetTraskState(TRASK_COMBAT_WARNING2);
 								
 								TalkTrask();
 							}
 							else
 								{
 									object oSith1 = CreateObject(OBJECT_TYPE_CREATURE, "end_bridgesith1", GetLocation(GetObjectByTag("wp_end_bridgesith1", 0)), 0);
 									object oSith2 = CreateObject(OBJECT_TYPE_CREATURE, "end_bridgesith2", GetLocation(GetObjectByTag("wp_end_bridgesith2", 0)), 0);
 									
 									DelayCommand(8.0, SignalEvent(oSith1, EventUserDefined(20)));
 									DelayCommand(12.0, SignalEvent(oSith2, EventUserDefined(20)));
 									
 									DelayCommand(8.0, SignalEvent(GetObjectByTag("end_bridgerep1", 0), EventUserDefined(20)));
 									DelayCommand(12.0, SignalEvent(GetObjectByTag("end_bridgerep2", 0), EventUserDefined(20)));
 									
 									DelayCommand(8.0, PlayExplosion("wp_end_bridgeexp1", 0, 0));
 									DelayCommand(12.0, PlayExplosion("wp_end_bridgeexp2", 0, 0));
 									
 									SetLocked(OBJECT_SELF, FALSE);
 									ActionOpenDoor(OBJECT_SELF);
 									
 									SetTraskState(TRASK_LEVEL_DONE);
 								}
 			}
 	
 	DestroyObject(GetCarth());
 }

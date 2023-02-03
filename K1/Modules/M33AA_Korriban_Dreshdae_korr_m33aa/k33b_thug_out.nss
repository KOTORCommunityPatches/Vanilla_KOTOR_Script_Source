// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_generic"

void main() {
 	
 	SetGlobalBoolean("KOR_THUG_TALK", FALSE);
 	
 	object oCommoner = GetObjectByTag("korr_citizenmwlk", 0);
 	
 	AssignCommand(oCommoner, GN_WalkWayPoints());
 	
 	object oThug01 = GetObjectByTag("k33b_siththug1", 0);
 	object oThug02 = GetObjectByTag("k33b_siththug2", 0);
 	object oThug03 = GetObjectByTag("k33b_siththug3", 0);
 	
 	SetGlobalNumber("KOR_THUG_DEATH", 4);
 
 	event eUser = EventUserDefined(10);
 	
 	object oExit = GetObjectByTag("k33_way_yuthuraexit", 0);
 	
 	SignalEvent(oThug01, eUser);
 	SignalEvent(oThug02, eUser);
 	SignalEvent(oThug03, eUser);
 	
 	ActionMoveToObject(oExit, TRUE);
 	ActionDoCommand(DestroyObject(OBJECT_SELF));
 	SetCommandable(FALSE, OBJECT_SELF);
 }

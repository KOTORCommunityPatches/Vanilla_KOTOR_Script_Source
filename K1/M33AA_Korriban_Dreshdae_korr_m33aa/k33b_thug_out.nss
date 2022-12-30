// Could not recompile

void main() {
 	
 	SetGlobalBoolean("KOR_THUG_TALK", 0);
 	
 	object oCommoner = GetObjectByTag("korr_citizenmwlk", 0);
 	
 	AssignCommand(oCommoner, GN_WalkWayPoints());
 	
 	object oThug01 = GetObjectByTag("k33b_siththug1", 0);
 	object oThug02 = GetObjectByTag("k33b_siththug2", 0);
 	object oThug03 = GetObjectByTag("k33b_siththug3", 0);
 	
 	SetGlobalNumber("KOR_THUG_DEATH", 4);
 
 	unknown unknown1 = EventUserDefined(10);
 	
 	object oExit = GetObjectByTag("k33_way_yuthuraexit", 0);
 	
 	SignalEvent(oThug01, unknown1);
 	SignalEvent(oThug02, unknown1);
 	SignalEvent(oThug03, unknown1);
 	
 	ActionMoveToObject(oExit, TRUE);
 	ActionDoCommand(DestroyObject(OBJECT_SELF));
 	SetCommandable(0, OBJECT_SELF);
 }

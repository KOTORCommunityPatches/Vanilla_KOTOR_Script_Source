// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

void main() {
	
	object oPC = GetFirstPC();
	location lLoc = GetLocation(oPC);
	object oWarDroid = GetObjectByTag("k45_plc_wardroid", 0);
	object oAssDroid = GetObjectByTag("k45_plc_assdroid", 0);
	object oMk2Droid = GetObjectByTag("k45_plc_mk2droid", 0);
	object oMk4Droid = GetObjectByTag("k45_plc_mk4droid", 0);
	object oPrbDroid = GetObjectByTag("k45_plc_prbdroid", 0);
	object oExcharge = GetObjectByTag("k45_plc_excharge", 0);
	event eUser = EventUserDefined(145);
	
	ActionPauseConversation();
	
	SignalEvent(oWarDroid, eUser);
	SignalEvent(oAssDroid, eUser);
	SignalEvent(oMk2Droid, eUser);
	SignalEvent(oMk4Droid, eUser);
	SignalEvent(oPrbDroid, eUser);
	SignalEvent(oExcharge, eUser);
	
	SetGlobalBoolean("STA_MALAK_START", TRUE);
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	
	DestroyObject(oMalak, 0.0, FALSE, 0.0);
	
	ActionWait(5.0);
	ActionResumeConversation();
}

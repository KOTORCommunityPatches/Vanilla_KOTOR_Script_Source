// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

#include "k_inc_utility"

void main() {
	
	object oWarDroid = GetObjectByTag("k45_plc_wardroid", 0);
	object oAssDroid = GetObjectByTag("k45_plc_assdroid", 0);
	object oMk2Droid = GetObjectByTag("k45_plc_mk2droid", 0);
	object oMk4Droid = GetObjectByTag("k45_plc_mk4droid", 0);
	object oPrbDroid = GetObjectByTag("k45_plc_prbdroid", 0);
	object oExcharge = GetObjectByTag("k45_plc_excharge", 0);
	event eUser = EventUserDefined(245);
	
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
	
	SignalEvent(oWarDroid, eUser);
	SignalEvent(oAssDroid, eUser);
	SignalEvent(oMk2Droid, eUser);
	SignalEvent(oMk4Droid, eUser);
	SignalEvent(oPrbDroid, eUser);
	SignalEvent(oExcharge, eUser);
	
	SetGlobalBoolean("STA_MALAK_START", FALSE);
	SetGlobalBoolean("STA_GEN_OFF", TRUE);
	SetGlobalNumber("STA_GENERATORS", 6);
	
	object oDoor = GetObjectByTag("sta45c_sta45d", 0);
	
	SetLocked(oDoor, FALSE);
}

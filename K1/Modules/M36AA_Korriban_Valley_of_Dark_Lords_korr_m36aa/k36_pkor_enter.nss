#include "k_inc_utility"

void main() {
	object oPC = GetFirstPC();
	if ((GetEnteringObject() == oPC)) {
		if ((GetGlobalNumber("KOR_ROGUE_DROID") >= 3)) {
			object oSithAss = GetObjectByTag("kor36_sithassass", 0);
			DestroyObject(oSithAss, 0.0, TRUE);
		}
		if (((GetGlobalNumber("KOR_LASHOWE_PLOT") == 2) && (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01)))) {
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
			object oLashWP = GetObjectByTag("k36_way_lashowe", 0);
			SetMapPinEnabled(oLashWP, TRUE);
			location lLashLoc = GetLocation(oLashWP);
			UT_CreateObject(OBJECT_TYPE_CREATURE, "kor36_lashowe", lLashLoc);
		}
		if (((((GetGlobalNumber("KOR_FINAL_TEST") > 3) && (!GetGlobalBoolean("KOR_ADD_PARTY"))) && (!GetGlobalBoolean("KOR_END_HOSTILE"))) && (!UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02)))) {
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_02, TRUE);
			SetAreaUnescapable(TRUE);
			object oDoor37 = GetObjectByTag("kor36_kor37", 0);
			AssignCommand(oDoor37, ActionCloseDoor(oDoor37));
			SetLocked(oDoor37, TRUE);
			object oDoor38b = GetObjectByTag("kor36_kor38b", 0);
			AssignCommand(oDoor38b, ActionCloseDoor(oDoor38b));
			SetLocked(oDoor38b, TRUE);
		}
		if ((GetGlobalBoolean("KOR_END_HOSTILE") && GetGlobalBoolean("KOR_ADD_PARTY"))) {
			SetAreaUnescapable(FALSE);
			object oDoor37 = GetObjectByTag("kor36_kor37", 0);
			AssignCommand(oDoor37, ActionCloseDoor(oDoor37));
			SetLocked(oDoor37, TRUE);
			object oDoor38b = GetObjectByTag("kor36_kor38b", 0);
			AssignCommand(oDoor38b, ActionCloseDoor(oDoor38b));
			SetLocked(oDoor38b, TRUE);
		}
		if (GetGlobalBoolean("KOR_ADD_PARTY")) {
			SetAreaUnescapable(FALSE);
		}
	}
}
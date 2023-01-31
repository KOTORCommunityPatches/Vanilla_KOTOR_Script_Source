#include "k_inc_utility"

void SetFlag(int nState) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, nState);
}

int GetFlag() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void main() {
	
	object oPC = GetFirstPC();
	object oUthar = GetObjectByTag("kor39_utharwynn", 0);
	object oYuthura = GetObjectByTag("kor39_yuthura", 0);
	object oSaber = GetItemPossessedBy(oPC, "k39_itm_cersaber");
	object oWP_Uthar = GetObjectByTag("k39_way_utharjmp", 0);
	object oWP_Yuthura = GetObjectByTag("k39_way_yuthjump", 0);
	
	if ((((((((GetEnteringObject() == oPC)
	&& GetIsObjectValid(oSaber))
	&& GetIsObjectValid(oUthar))
	&& GetIsObjectValid(oYuthura))
	&& (!GetIsDead(oUthar)))
	&& (!GetIsDead(oYuthura)))
	&& (!GetFlag())))
		{
			SetFlag(TRUE);
			AssignCommand(oUthar, ActionJumpToObject(oWP_Uthar));
			AssignCommand(oYuthura, ActionJumpToObject(oWP_Yuthura));
		}
}
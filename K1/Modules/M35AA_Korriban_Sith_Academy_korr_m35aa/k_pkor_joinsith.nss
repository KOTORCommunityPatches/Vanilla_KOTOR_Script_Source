// Likely used a Korriban include that does not exist in the shipped game files.

#include "k_inc_utility"
#include "k_inc_debug"
#include "k_inc_generic"

void Patrol() {
	
	object oGuard2 = GetObjectByTag("kor35_sithguard2", 0);
	object oGuard3 = GetObjectByTag("kor35_sithguard3", 0);
	object oGuard4 = GetObjectByTag("kor35_sithguard4", 0);
	object oStudentF = GetObjectByTag("k35_stdnt_wndrf", 0);
	object oStudentM = GetObjectByTag("k35_stdnt_wndrm", 0);
	
	SetGlobalBoolean("KOR_UTHAR_TALK", FALSE);
	
	AssignCommand(oGuard2, GN_WalkWayPoints());
	AssignCommand(oGuard3, GN_WalkWayPoints());
	AssignCommand(oGuard4, GN_WalkWayPoints());
	AssignCommand(oStudentF, GN_WalkWayPoints());
	AssignCommand(oStudentM, GN_WalkWayPoints());
}

void main() {
	
	object oPC = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oHijata = GetObjectByTag("kor35_hijata", 0);
	object oLashowe = GetObjectByTag("kor35_lashowe", 0);
	object oMekel = GetObjectByTag("kor35_mekel", 0);
	object oShaardan = GetObjectByTag("kor35_shaardan", 0);
	object oYuthura = GetObjectByTag("kor35_yuthura", 0);	
	object oWP_Hija = GetObjectByTag("k35_way_hijata", 0);
	object oWP_Lash = GetObjectByTag("k35_way_lashowe", 0);
	object oWP_Meke = GetObjectByTag("k35_way_mekel", 0);
	object oWP_Shaa = GetObjectByTag("k35_way_shaardan", 0);
	object oWP_Yuth = GetObjectByTag("k35_way_yuthura", 0);
	object oWP_PC = GetObjectByTag("k35_way_pcroom", 0);
	object oWP_PM1 = GetObjectByTag("k35_way_pcroom1", 0);
	object oWP_PM2 = GetObjectByTag("k35_way_pcroom2", 0);
	
	SetGlobalFadeOut(1.0, 2.0);
	
	Patrol();
	
	SetGlobalNumber("KOR_SITHJOIN", 1);
	SetGlobalNumber("KOR_SITHTEST", 1);
	
	SetMapPinEnabled(oWP_PC, 1);

	CreateItemOnObject("k35_itm_sithpass", oPC, 1);
	
	AssignCommand(oPC, ActionJumpToObject(oWP_PC));
	
	if ((GetIsObjectValid(oPM1) && GetIsObjectValid(oWP_PM1)))
		{
			location lWP_PM1 = GetLocation(oWP_PM1);
			DelayCommand(0.5, UT_TeleportPartyMember(oPM1, lWP_PM1));
			ActionDoCommand(Db_PostString("PC1 Valid", 10, 10, 5.0));
		}
		else
			{
				Db_PostString("PC1 Not Valid", 10, 10, 5.0);
			}
	
	if ((GetIsObjectValid(oPM2) && GetIsObjectValid(oWP_PM2)))
		{
			location lWP_PM2 = GetLocation(oWP_PM2);
			DelayCommand(0.5, UT_TeleportPartyMember(oPM2, lWP_PM2));
			ActionDoCommand(Db_PostString("PC2 Valid", 5, 5, 5.0));
		}
		else
			{
				Db_PostString("PC2 Not Valid", 5, 5, 5.0);
			}
	
	AssignCommand(oLashowe, ActionDoCommand(UT_SetPlotBooleanFlag(oLashowe, SW_PLOT_BOOLEAN_02, TRUE)));
	AssignCommand(oLashowe, ActionJumpToObject(oWP_Lash));
	
	AssignCommand(oMekel, ActionDoCommand(UT_SetPlotBooleanFlag(oMekel, SW_PLOT_BOOLEAN_02, TRUE)));
	AssignCommand(oMekel, ActionJumpToObject(oWP_Meke));
	
	AssignCommand(oShaardan, ActionDoCommand(UT_SetPlotBooleanFlag(oShaardan, SW_PLOT_BOOLEAN_02, TRUE)));
	AssignCommand(oShaardan, ActionJumpToObject(oWP_Shaa));
	
	AssignCommand(oYuthura, ActionJumpToObject(oWP_Yuth));

	AssignCommand(oHijata, ClearAllActions());
	AssignCommand(oHijata, ActionJumpToObject(oWP_Hija));
	
	SetGlobalFadeIn(2.0, 2.0);
}

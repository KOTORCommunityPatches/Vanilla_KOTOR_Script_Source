#include "k_inc_generic"
#include "k_inc_utility"
#include "k_inc_debug"

void ToggleAI(int nIndex, int nState) {
	SetLocalBoolean(OBJECT_SELF, nIndex, nState);
}

void Patrol() {
	
	object oKor35_sithguard2 = GetObjectByTag("kor35_sithguard2", 0);
	object oKor35_sithguard3 = GetObjectByTag("kor35_sithguard3", 0);
	object oKor35_sithguard4 = GetObjectByTag("kor35_sithguard4", 0);
	object oK35_stdnt_wndrf = GetObjectByTag("k35_stdnt_wndrf", 0);
	object oK35_stdnt_wndrm = GetObjectByTag("k35_stdnt_wndrm", 0);
	
	SetGlobalBoolean("KOR_UTHAR_TALK", FALSE);
	
	AssignCommand(oKor35_sithguard2, GN_WalkWayPoints());
	AssignCommand(oKor35_sithguard3, GN_WalkWayPoints());
	AssignCommand(oKor35_sithguard4, GN_WalkWayPoints());
	AssignCommand(oK35_stdnt_wndrf, GN_WalkWayPoints());
	AssignCommand(oK35_stdnt_wndrm, GN_WalkWayPoints());
}

void main() {
	
	object oPC = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oWP_PC = GetObjectByTag("k35_way_pcroom", 0);
	object oWP_PM1 = GetObjectByTag("k35_way_pcroom1", 0);
	object oWP_PM2 = GetObjectByTag("k35_way_pcroom2", 0);
	
	Patrol();
	
	SetGlobalFadeOut(2.0, 2.0);
	SetGlobalBoolean("KOR_PRESTIGE_END", TRUE);

	if ((GetIsObjectValid(oPM1) && GetIsObjectValid(oWP_PM1)))
		{
			location lWP_PM1 = GetLocation(oWP_PM1);
			
			AssignCommand(oPM1, ClearAllActions());
			DelayCommand(0.5, UT_TeleportPartyMember(oPM1, lWP_PM1));
			Db_PostString("PC1 Valid", 10, 10, 5.0);
		}
		else
			{
				Db_PostString("PC1 Not Valid", 10, 10, 5.0);
			}
	
	if ((GetIsObjectValid(oPM2) && GetIsObjectValid(oWP_PM2)))
		{
			location lWP_PM2 = GetLocation(oWP_PM2);
			
			AssignCommand(oPM2, ClearAllActions());
			DelayCommand(0.5, UT_TeleportPartyMember(oPM2, lWP_PM2));
			Db_PostString("PC2 Valid", 5, 5, 5.0);
		}
		else
			{
				Db_PostString("PC2 Not Valid", 5, 5, 5.0);
			}
	
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, JumpToObject(oWP_PC));
	
	SetGlobalFadeIn(2.0, 2.0);
	
	ActionDoCommand(UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, FALSE));
	
	AssignCommand(oPM1, ToggleAI(62, FALSE));
	AssignCommand(oPM2, ToggleAI( 62, FALSE));
}

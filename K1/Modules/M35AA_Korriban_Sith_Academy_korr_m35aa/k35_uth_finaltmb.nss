#include "k_inc_generic"

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
	
	Patrol();
	
	SetGlobalNumber("KOR_START_FINAL", 1);
	SetGlobalFadeIn(1.0, 1.0);
	StartNewModule("korr_m39aa");
}
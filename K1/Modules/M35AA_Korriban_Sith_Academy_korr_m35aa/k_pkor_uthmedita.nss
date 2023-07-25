// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void NPCsWalk() {
	SetGlobalBoolean("KOR_UTHAR_TALK", 0);
	object oGuard2 = GetObjectByTag("kor35_sithguard2", 0);
	object oGuard3 = GetObjectByTag("kor35_sithguard3", 0);
	object oGuard4 = GetObjectByTag("kor35_sithguard4", 0);
	object oStudentF = GetObjectByTag("k35_stdnt_wndrf", 0);
	object oStudentM = GetObjectByTag("k35_stdnt_wndrm", 0);
	AssignCommand(oGuard2, GN_WalkWayPoints());
	AssignCommand(oGuard3, GN_WalkWayPoints());
	AssignCommand(oGuard4, GN_WalkWayPoints());
	AssignCommand(oStudentF, GN_WalkWayPoints());
	AssignCommand(oStudentM, GN_WalkWayPoints());
}

void main() {
	
	NPCsWalk();
	
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, FALSE);
}

#include "k_inc_tar"

void main() {
	
	object oMissionWP = OBJECT_INVALID;
	object oMission;
	object oEntering = GetEnteringObject();
	float float1 = 1000.0;
	
	Db_PostString("MISSION TRIGGER", 5, 5, 5.0);
	
	oMission = GetObjectByTag("hendarsfate", 0);
	
	if (GetIsObjectValid(oMission))
		{
			Db_PostString("RAKGHOUL LIVES", 5, 6, 5.0);
		}
	
	if (oEntering == GetPartyMemberByIndex(0) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF) && UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
		{
			Db_PostString("SPAWNING MISSION...", 5, 6, 5.0);
			
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			oMissionWP = GetNearestObjectByTag("tar04_spmission", GetFirstPC(), 1);
			
			oMission = CreateObject(OBJECT_TYPE_CREATURE, "tar04_mission", GetLocation(oMissionWP));
			
			AssignCommand(oMission, ActionStartConversation(oEntering, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}

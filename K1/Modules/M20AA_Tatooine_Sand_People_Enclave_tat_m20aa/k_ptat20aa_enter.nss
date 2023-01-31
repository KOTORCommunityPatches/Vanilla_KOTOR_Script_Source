#include "k_inc_tat"

void SpawnGriff() {
	
	object oWP_Griff = GetWaypointByTag("tat20_wp_griff");
	object oWP_Guard1 = GetObjectByTag("tat20_griffguard", 0);
	object oWP_Guard2 = GetObjectByTag("tat20_griffguard", 1);
	object oWP_Guard3 = GetObjectByTag("tat20_griffguard", 2);
	object oWP_Guard4 = GetObjectByTag("tat20_griffguard", 3);
	location lWP_Griff = GetLocation(oWP_Griff);
	location lWP_Guard1 = GetLocation(oWP_Guard1);
	location lWP_Guard2 = GetLocation(oWP_Guard2);
	location lWP_Guard3 = GetLocation(oWP_Guard3);
	location lWP_Guard4 = GetLocation(oWP_Guard4);
	
	CreateObject(OBJECT_TYPE_CREATURE, "tat20_griff", lWP_Griff, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "tat20_09warr_01", lWP_Guard1, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "tat20_09warr_01", lWP_Guard2, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "tat20_09warr_01", lWP_Guard3, 0);
	CreateObject(OBJECT_TYPE_CREATURE, "tat20_09warr_01", lWP_Guard4, 0);
}

void main() {
	
	object oPC = GetFirstPC();
	object oVaporator = GetItemPossessedBy(oPC, "tat17_vaporator");
	object oChief = GetObjectByTag("tat20_09chief_01", 0);
	
	SetGlobalNumber("tat_AreaLocator", 4);
	
	if (GetGlobalNumber("Mis_MissionTalk") == 9 && GetGriffSpawnLocal() == FALSE)
		{
			SetGriffSpawnLocal(TRUE);
			DelayCommand(1.0, SpawnGriff());
		}
	
	if (GetIsObjectValid(oVaporator) == TRUE)
		{
			NoClicksFor(0.7);
			DelayCommand(0.5, AssignCommand(oChief, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
		}
}
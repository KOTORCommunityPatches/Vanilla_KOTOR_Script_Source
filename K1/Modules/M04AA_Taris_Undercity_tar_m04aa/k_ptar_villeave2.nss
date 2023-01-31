#include "k_inc_tar"

void Destroy_NPC(object oNPC, float fDelay) {
	object oSelf = OBJECT_SELF;
	DelayCommand(fDelay, DestroyObject(oSelf, 0.0, TRUE));
}

void Remove_NPC(object oNPC, float fDelay) {
	TAR_MarkForCleanup(oNPC);
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(oNPC, ActionDoCommand(Destroy_NPC(GetObjectByTag("tar04_wpexodus0", 0), fDelay)));
}

void main() {
	
	object oSelf = OBJECT_SELF;
	object oGendar = GetObjectByTag("gendar041", 0);
	object oAreaObject;
	int nCount;
	float fDelay = 1.5;
	
	DestroyObject(GetObjectByTag("rakghoulvic00", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("rakghoulvic01", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("rakghoulvic02", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("infectedoutcastf", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("infectedoutcastm", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("outcastwoman043", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("outcastman045", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("outcastman046", 0), 0.0, TRUE);
	
	SignalEvent(GetObjectByTag("tar04_maingate", 0), EventUserDefined(2000));
	
	ActionJumpToObject(GetObjectByTag("tar04_wprukil", 0), 1);
	AssignCommand(oGendar, ActionJumpToObject(GetObjectByTag("tar04_wpgendar", 0), TRUE));
	
	SetGlobalFadeIn(1.0, 1.0);
	
	oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
	nCount = 0;
	
	while (GetIsObjectValid(oAreaObject))
		{
			if (FindSubString(GetTag(oAreaObject), "outcast") >= 0 || GetTag(oAreaObject) == "Igear")
				{
					Remove_NPC(oAreaObject, 0.0);
					nCount++;
				}
			
			oAreaObject = GetNextObjectInArea(OBJECT_INVALID, OBJECT_TYPE_CREATURE);
		}
	
	location lLoc1 = GetLocation(GetObjectByTag("tar_cut_actor1_wp", 0));
	location lLoc2 = GetLocation(GetObjectByTag("tar_cut_actor2_wp", 0));
	location lLoc3 = GetLocation(GetObjectByTag("tar_cut_actor3_wp", 0));
	location lLoc4 = GetLocation(GetObjectByTag("tar_cut_actor4_wp", 0));
	location lLoc5 = GetLocation(GetObjectByTag("tar_cut_actor5_wp", 0));
	location lLoc6 = GetLocation(GetObjectByTag("tar_cut_actor6_wp", 0));
	object oNPC1 = CreateObject(OBJECT_TYPE_CREATURE, "tar_cut_actor1", lLoc1);
	object oNPC2 = CreateObject(OBJECT_TYPE_CREATURE, "tar_cut_actor2", lLoc2);
	object oNPC3 = CreateObject(OBJECT_TYPE_CREATURE, "tar_cut_actor3", lLoc3);
	object oNPC4 = CreateObject(OBJECT_TYPE_CREATURE, "tar_cut_actor4", lLoc4);
	object oNPC5 = CreateObject(OBJECT_TYPE_CREATURE, "tar_cut_actor5", lLoc5);
	object oNPC6 = CreateObject(OBJECT_TYPE_CREATURE, "tar_cut_actor6", lLoc6);
	location lLoc7 = GetLocation(GetObjectByTag("tar_cut_actor1_move_wp", 0));
	location lLoc8 = GetLocation(GetObjectByTag("tar_cut_actor2_move_wp", 0));
	location lLoc9 = GetLocation(GetObjectByTag("tar_cut_actor3_move_wp", 0));
	location lLoc10 = GetLocation(GetObjectByTag("tar_cut_actor4_move_wp", 0));
	location lLoc11 = GetLocation(GetObjectByTag("tar_cut_actor5_move_wp", 0));
	location lLoc12 = GetLocation(GetObjectByTag("tar_cut_actor6_move_wp", 0));
	
	UT_ActionPauseConversation(7.0);
	
	DelayCommand(0.1, AssignCommand(oNPC1, ActionMoveToLocation(lLoc7)));
	DelayCommand(0.2, AssignCommand(oNPC2, ActionMoveToLocation(lLoc8)));
	DelayCommand(0.3, AssignCommand(oNPC3, ActionMoveToLocation(lLoc9)));
	DelayCommand(0.4, AssignCommand(oNPC4, ActionMoveToLocation(lLoc10)));
	DelayCommand(0.5, AssignCommand(oNPC5, ActionMoveToLocation(lLoc11)));
	DelayCommand(0.6, AssignCommand(oNPC6, ActionMoveToLocation(lLoc12)));
}
#include "k_inc_lev"

void main() {
	
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	DelayCommand(0.2, MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 8));
	DelayCommand(0.2, MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 8));
	DelayCommand(0.5, MusicBackgroundPlay(GetArea(OBJECT_SELF)));
	
	object oMalak = GetObjectByTag("DarthMalak400", 0);
	int int1;
	object object7;
	object object8;
	
	SetPartyLeader(NPC_PLAYER);
	
	DelayCommand(0.2, AssignCommand(GetObjectByTag("lev40_blastdoorb", 0), ActionOpenDoor(OBJECT_SELF)));
	
	object oWP_PC = GetObjectByTag("lev40_wpconfa", 0);
	object oWP_Bast = GetObjectByTag("lev40_wpconfb", 0);
	object oWP_Carth = GetObjectByTag("lev40_wpconfc", 0);
	
	AssignCommand(GetFirstPC(), JumpToLocation(GetLocation(oWP_PC)));
	UT_TeleportPartyMember(GetObjectByTag("Carth", 0), GetLocation(oWP_Carth));
	UT_TeleportPartyMember(GetObjectByTag("Bastila", 0), GetLocation(oWP_Bast));
	
	DelayCommand(2.0, AssignCommand(GetFirstPC(), JumpToLocation(GetLocation(oWP_PC))));
	DelayCommand(2.0, UT_TeleportPartyMember(GetObjectByTag("Carth", 0), GetLocation(oWP_Carth)));
	DelayCommand(2.0, UT_TeleportPartyMember(GetObjectByTag("Bastila", 0), GetLocation(oWP_Bast)));
	
	UT_ActionPauseConversation(4.5);
	
	DelayCommand(1.0, AssignCommand(GetObjectByTag("DarthMalak400", 0), ActionMoveToObject(GetObjectByTag("lev40_wpmalak", 0))));
	
	object oCarth = GetObjectByTag("Carth", 0);
	object oBastila = GetObjectByTag("Bastila", 0);
	
	CreateItemOnObject("bast_temp_saber", oBastila, 1);
	DelayCommand(0.5, AssignCommand(oBastila, ActionEquipItem(GetItemPossessedBy(oBastila, "bast_temp_saber"), INVENTORY_SLOT_RIGHTWEAPON, TRUE)));
	
	if (GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oCarth) == OBJECT_INVALID)
		{
			AssignCommand(oCarth, ActionEquipMostDamagingRanged(OBJECT_INVALID));
		}
}

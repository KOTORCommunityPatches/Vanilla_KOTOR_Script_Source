#include "k_inc_utility"

void main() {
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oJUMP0_WP = GetNearestObjectByTag("STA_JUMP0_WP", OBJECT_SELF, 1);
	object oJUMP1_WP = GetNearestObjectByTag("STA_JUMP1_WP", OBJECT_SELF, 1);
	object oJUMP2_WP = GetNearestObjectByTag("STA_JUMP2_WP", OBJECT_SELF, 1);
	location location1 = GetLocation(GetNearestObjectByTag("STA_MOVE0_WP", OBJECT_SELF, 1));
	location location3 = GetLocation(GetNearestObjectByTag("STA_MOVE1_WP", OBJECT_SELF, 1));
	location location5 = GetLocation(GetNearestObjectByTag("STA_MOVE2_WP", OBJECT_SELF, 1));
	object oDoor = GetNearestObjectByTag("sta_door_unlock1", OBJECT_SELF, 1);
	float fDirection = 90.0;
	
	CancelCombat(oPM1);
	CancelCombat(oPM2);
	
	UT_ActionPauseConversation(4.5);
	UT_TeleportWholeParty(oJUMP0_WP, oJUMP1_WP, oJUMP2_WP);
	
	CancelCombat(oPM1);
	CancelCombat(oPM2);
	
	DelayCommand(0.3, AssignCommand(oPM0, SetFacing(fDirection)));
	DelayCommand(1.0, AssignCommand(oDoor, ActionCloseDoor(oDoor)));
	DelayCommand(2.2, SetLocked(oDoor, TRUE));
	
	DelayCommand(1.4, SetDialogPlaceableCamera(19));
	
	DelayCommand(2.3, DestroyObject(GetObjectByTag("sta_Jedi001", 0), 0.0, 0, 0.0));
	DelayCommand(2.3, DestroyObject(GetObjectByTag("sta_Jedi002", 0), 0.0, 0, 0.0));
	DelayCommand(2.3, DestroyObject(GetObjectByTag("sta_Jedi003", 0), 0.0, 0, 0.0));
	DelayCommand(2.3, DestroyObject(GetObjectByTag("sta_Jedi004", 0), 0.0, 0, 0.0));
}
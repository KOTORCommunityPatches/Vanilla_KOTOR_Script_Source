#include "k_inc_generic"

void ToggleAI(int nIndex, int nState) {
	SetLocalBoolean(OBJECT_SELF, nIndex, nState);
}

void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oArea = GetArea(OBJECT_SELF);
	object oDoor = GetObjectByTag("k38b_door_jorak", 0);
	object oWP_Jorak = GetObjectByTag("K38B_WAY_K36", 0);
	
	
	MusicBattleStop(oArea);
	DelayCommand(0.1, MusicBackgroundPlay(oArea));
	
	SetLocked(oDoor, FALSE);
	
	DelayCommand(0.1, AssignCommand(oPM0, ClearAllEffects()));
	DelayCommand(0.1, AssignCommand(oPM0, ClearAllActions()));
	
	if (GetIsObjectValid(oPM1))
		{
			AssignCommand(oPM1, ToggleAI(SW_FLAG_AI_OFF, FALSE));
			DelayCommand(0.1, AssignCommand(oPM1, ClearAllEffects()));
			DelayCommand(0.1, AssignCommand(oPM1, ClearAllActions()));
		}
	
	if (GetIsObjectValid(oPM2))
		{
			AssignCommand(oPM2, ToggleAI(SW_FLAG_AI_OFF, FALSE));
			DelayCommand(0.1, AssignCommand(oPM2, ClearAllEffects()));
			DelayCommand(0.1, AssignCommand(oPM2, ClearAllActions()));
		}
	
	CreateItemOnObject("kor_itm_sithtabl", oPM0, 1);
	
	ActionOpenDoor(oDoor);
	
	ActionMoveToObject(oWP_Jorak, TRUE);
	ActionDoCommand(DestroyObject(OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
}

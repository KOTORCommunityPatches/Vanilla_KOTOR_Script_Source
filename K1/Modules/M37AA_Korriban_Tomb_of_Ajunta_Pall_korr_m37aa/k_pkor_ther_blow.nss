#include "k_inc_generic"

void AIToggle(int nIndex, int nState) {
	SetLocalBoolean(OBJECT_SELF, nIndex, nState);
}

void main() {
	
	object oArea = GetArea(OBJECT_SELF);
	object oTherObel = GetObjectByTag("kor37_therangen", 0);
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oPartyWP = GetObjectByTag("k37_way_player1", 0);
	
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
	
	SetPlotFlag(oTherObel, FALSE);
	
	ActionPauseConversation();
	
	AssignCommand(oPM0, ActionMoveToObject(oPartyWP, TRUE));
	
	if (((!GetSoloMode()) && GetIsObjectValid(oPM1)))
		{
			AssignCommand(oPM1, AIToggle(SW_FLAG_AI_OFF, TRUE));
			AssignCommand(oPM1, ClearAllActions());
			AssignCommand(oPM1, ActionMoveToObject(oPartyWP, TRUE));
		}
	
	if (((!GetSoloMode()) && GetIsObjectValid(oPM2)))
		{
			AssignCommand(oPM2, AIToggle(SW_FLAG_AI_OFF, TRUE));
			AssignCommand(oPM2, ClearAllActions());
			AssignCommand(oPM2, ActionMoveToObject(oPartyWP, TRUE));
		}
	
	ActionWait(2.0);
	ActionResumeConversation();
}

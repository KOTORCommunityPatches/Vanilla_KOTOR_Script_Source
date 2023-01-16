#include "k_inc_generic"

void ToggleAI(int nIndex, int nState) {
	SetLocalBoolean(OBJECT_SELF, nIndex, nState);
}

void main() {
	object oPC = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oWP_PC = GetObjectByTag("k35_way_yuthleav", 0);
	object oWP_PM1 = GetNearestObjectByTag("k35_way_npcleave", OBJECT_SELF, 1);
	object oWP_PM2 = GetNearestObjectByTag("k35_way_npc2leav", OBJECT_SELF, 1);
	
	AssignCommand(oPM1, ToggleAI(SW_FLAG_AI_OFF, TRUE));
	AssignCommand(oPM2, ToggleAI(SW_FLAG_AI_OFF, TRUE));
	
	ActionPauseConversation();
	
	AssignCommand(oPM1, ClearAllActions());
	AssignCommand(oPM2, ClearAllActions());
	AssignCommand(oPC, ActionMoveToObject(oWP_PC));
	AssignCommand(oPM1, ActionMoveToObject(oWP_PM1));
	AssignCommand(oPM2, ActionMoveToObject(oWP_PM2));
	
	ActionWait(3.0);
	ActionResumeConversation();
}

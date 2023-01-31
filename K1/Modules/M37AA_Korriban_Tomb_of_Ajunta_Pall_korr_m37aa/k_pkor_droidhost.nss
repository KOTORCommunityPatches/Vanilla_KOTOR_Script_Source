#include "k_inc_generic"

void AIToggle(int nIndex, int nState) {
	SetLocalBoolean(OBJECT_SELF, nIndex, nState);
}

void main() {
	
	object oDroid1 = GetObjectByTag("kor37_bridge1", 0);
	object oDroid2 = GetObjectByTag("kor37_bridge2", 0);
	object oDroid3 = GetObjectByTag("kor37_bridge3", 0);
	object oDroid4 = GetObjectByTag("kor37_bridge4", 0);
	object oPC = GetFirstPC();
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	
	AssignCommand(oPM1, AIToggle(SW_FLAG_AI_OFF, FALSE));
	AssignCommand(oPM2, AIToggle(SW_FLAG_AI_OFF, FALSE));
	
	ChangeFactionByFaction(STANDARD_FACTION_NEUTRAL, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(0.5, AssignCommand(oDroid1, ActionAttack(oPC)));
	DelayCommand(0.5, AssignCommand(oDroid2, ActionAttack(oPC)));
	DelayCommand(0.5, AssignCommand(oDroid3, ActionAttack(oPC)));
	DelayCommand(0.5, AssignCommand(oDroid4, ActionAttack(oPC)));
}
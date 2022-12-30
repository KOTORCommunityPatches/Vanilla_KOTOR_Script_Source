#include "k_inc_generic"

void ToggleAI(int nIndex, int nState) {
	SetLocalBoolean(OBJECT_SELF, nIndex, nState);
}

void main() {
	
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	
	if (GetIsObjectValid(oPM1))
		{
			AssignCommand(oPM1, ToggleAI(SW_FLAG_AI_OFF, TRUE));
		}
		
	if (GetIsObjectValid(oPM2))
		{
			AssignCommand(oPM2, ToggleAI(SW_FLAG_AI_OFF, TRUE));
		}
}

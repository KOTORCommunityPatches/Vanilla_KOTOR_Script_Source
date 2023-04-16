// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_end"

void main() {
	
	if (HasNeverTriggered() && GetSkillRank(SKILL_STEALTH, GetFirstPC()) > 0)
		{
			SetCarthState(ROOM3_DEAD);
			AssignCommand(GetCarth(), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
		}
}

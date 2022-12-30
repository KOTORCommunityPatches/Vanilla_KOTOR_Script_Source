// Byte code does not match
#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	
	if (((GetIsPC(oEntering) == TRUE) && (UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE)))
		{
			SetPartyLeader(NPC_PLAYER);
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			if ((!GetGlobalBoolean("Unk_RedHostile")))
				{
					AssignCommand(GetObjectByTag("unk42_redelder", 0), ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
				}
		}
}

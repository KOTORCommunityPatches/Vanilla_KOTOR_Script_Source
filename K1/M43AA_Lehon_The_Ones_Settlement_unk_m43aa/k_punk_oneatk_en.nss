// Byte code does not match
#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	object oTheOne = GetObjectByTag("unk43_theone", 0);
	
	if (IsObjectPartyMember(oEntering) == TRUE && UT_GetTalkedToBooleanFlag(OBJECT_SELF) == FALSE && GetGlobalBoolean("UNK_BLACKHOSTILE") == TRUE && GetIsObjectValid(GetObjectByTag("unk43_theone", 0)) == TRUE)
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			UT_SetTalkedToBooleanFlag(GetObjectByTag("unk43_onespk", 0), TRUE);
			
			SetGlobalFadeOut();
			
			SetPartyLeader(NPC_PLAYER);
			
			ChangeToStandardFaction(oTheOne, STANDARD_FACTION_NEUTRAL);
			ChangeToStandardFaction(GetObjectByTag("unk43_rancor1", 0), STANDARD_FACTION_NEUTRAL);
			ChangeToStandardFaction(GetObjectByTag("unk43_rancor2", 0), STANDARD_FACTION_NEUTRAL);
			ChangeToStandardFaction(GetObjectByTag("unk43_rancor3", 0), STANDARD_FACTION_NEUTRAL);
			ChangeToStandardFaction(GetObjectByTag("unk43_rancor4", 0), STANDARD_FACTION_NEUTRAL);
			
			CancelCombat(GetPartyMemberByIndex(0));
			CancelCombat(GetPartyMemberByIndex(1));
			CancelCombat(GetPartyMemberByIndex(2));
			CancelCombat(oTheOne);
			
			AssignCommand(oTheOne, ActionDoCommand(ActionStartConversation(GetPCSpeaker(), "unk43_battle", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
		}
}

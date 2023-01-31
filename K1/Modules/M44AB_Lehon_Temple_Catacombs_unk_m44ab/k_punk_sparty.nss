// Byte code does not match
#include "k_inc_utility"

void main() {
	
	if (GetIsPC(GetEnteringObject()) == TRUE && GetGlobalBoolean("UNK_SWITCH_DONE") == FALSE && GetGlobalBoolean("UNK_TILES") == FALSE)
		{
			
			SetGlobalFadeOut();
			SetPartyLeader(NPC_PLAYER);
			
			DelayCommand(0.1, UT_TeleportPartyMember(GetPartyMemberByIndex(0), GetLocation(GetObjectByTag("playerwp", 0))));
			DelayCommand(0.1, UT_TeleportPartyMember(GetPartyMemberByIndex(1), GetLocation(GetObjectByTag("joleewp", 0))));
			DelayCommand(0.1, UT_TeleportPartyMember(GetPartyMemberByIndex(2), GetLocation(GetObjectByTag("juhaniwp", 0))));
			
			SetGlobalBoolean("UNK_SWITCH_DONE", TRUE);
			
			DelayCommand(0.15, AssignCommand(GetObjectByTag("invis", 0), ActionStartConversation(GetPartyMemberByIndex(0), "unk44_sparty")));
		}
		else
			{
				if (GetIsPC(GetEnteringObject()) == TRUE)
					{
						SetSoloMode(FALSE);
						
						if (GetGlobalBoolean("UNK_TILES") == TRUE)
							{
								SetGlobalBoolean("UNK_SWITCH_DONE", TRUE);
								DestroyObject(OBJECT_SELF);
							}
							else
								{
									SetGlobalBoolean("UNK_SWITCH_DONE", FALSE);
								}
					}
			}
}
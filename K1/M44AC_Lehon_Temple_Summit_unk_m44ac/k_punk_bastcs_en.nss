// Byte code does not match
#include "k_inc_utility"
#include "k_inc_debug"

void ChangeLeader() {
	SetPartyLeader(NPC_PLAYER);
}

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering) && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			SetGlobalBoolean("UNK_BASTILA_CS", TRUE);
			
			Db_PostString("entering", 5, 5, 1.0);
			
			DelayCommand(0.44, ChangeLeader());
			
			DelayCommand(0.45, UT_NPC_InitConversation("bastilae", "", OBJECT_INVALID));
			
			DelayCommand(0.5, UT_TeleportPartyMember(GetPartyMemberByIndex(0), GetLocation(GetObjectByTag("playerwp", 0))));
			DelayCommand(0.5, UT_TeleportPartyMember(GetPartyMemberByIndex(1), GetLocation(GetObjectByTag("pm1wp", 0))));
			DelayCommand(0.5, UT_TeleportPartyMember(GetPartyMemberByIndex(2), GetLocation(GetObjectByTag("pm2wp", 0))));
		}
}

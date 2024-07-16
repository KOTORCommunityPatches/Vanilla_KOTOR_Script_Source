// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_debug"

void StartModule() {
	StartNewModule("STUNT_54a", "", "51");
}

void main() {
	
	SetGlobalBoolean("STA_MALAK_DEAD", TRUE);
	
	object oPC = GetFirstPC();
	
	if (GetGlobalNumber("G_FinalChoice") == 1 && GetGlobalNumber("K_SWG_CARTH") != 16)
		{
			StartModule();
			Db_PostString("GAME OVER", 10, 10, 5.0);
		}
		else
			{
				NoClicksFor(0.7);
				DelayCommand(0.5, ActionStartConversation(GetFirstPC(), "sta_walkaway", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
			}
}

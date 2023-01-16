// Byte code does not match

#include "k_inc_unk"
 
 void main() {
 	
 	int nCheck = GetLocalBoolean(OBJECT_SELF, SW_PLOT_BOOLEAN_10) == FALSE && GetIsPC(GetEnteringObject()) == TRUE;
 	
 	Db_PostString("first if", 5, 5, 3.0);
 	
 	if (nCheck == TRUE)
 		{
 			Db_PostString("second if", 5, 6, 3.0);
 			
 			if (GetGlobalNumber("G_FinalChoice") == 0)
 				{
 					SetGlobalFadeOut();
 				}
 			
 			SetGlobalBoolean("UNK_TEMP11", TRUE);
 			
 			SetPartyLeader(NPC_PLAYER);
 			
 			NoClicksFor(0.7);
 			
 			DelayCommand(0.5, AssignCommand(GetObjectByTag("invish", 0), ActionStartConversation(GetFirstPC(), "newfight", FALSE, 0, TRUE)));
 			
 			SetLocalBoolean(OBJECT_SELF, SW_PLOT_BOOLEAN_10, TRUE);
 		}
 }

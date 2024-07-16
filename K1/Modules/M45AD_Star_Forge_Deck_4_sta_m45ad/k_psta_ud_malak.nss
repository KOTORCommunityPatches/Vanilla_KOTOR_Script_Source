// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_generic"
#include "k_inc_utility"
#include "k_inc_debug"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{

		}
	else if (nUser == 1002) // PERCEIVE
		{

		}
	else if (nUser == 1003) // END OF COMBAT
		{

		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ATTACKED
		{

		}
	else if (nUser == 1006) // DAMAGED
		{
			object oPC = GetFirstPC();
			object oCaptive2 = GetNearestObjectByTag("sta_plc_captive2", OBJECT_SELF, 1);
			object oCaptive3 = GetNearestObjectByTag("sta_plc_captive3", OBJECT_SELF, 1);
			object oCaptive4 = GetNearestObjectByTag("sta_plc_captive4", OBJECT_SELF, 1);
			object oCaptive5 = GetNearestObjectByTag("sta_plc_captive5", OBJECT_SELF, 1);
			object oCaptive6 = GetNearestObjectByTag("sta_plc_captive6", OBJECT_SELF, 1);
			object oCaptive7 = GetNearestObjectByTag("sta_plc_captive7", OBJECT_SELF, 1);
			object oCaptive8 = GetNearestObjectByTag("sta_plc_captive8", OBJECT_SELF, 1);
			int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
			
			if (GetGlobalNumber("STA_MALAK_TALK") == 2 && nCurHP <= 100)
				{
					if (GetIsObjectValid(oCaptive2) && GetGlobalNumber("STA_MALAK_JEDI") <= 1)
						{
							Db_PostString("2nd surrender", 10, 10, 5.0);
							SetGlobalNumber("STA_MALAK_JEDI", 2);
							ActionSurrenderToEnemies();
							SetGlobalFadeOut(0.5, 1.0);
							SetGlobalFadeIn(1.0, 1.0);
							DelayCommand(0.5, UT_NPC_InitConversation("sta45d_cutscene"));
						}
					else if (GetIsObjectValid(oCaptive3) && GetGlobalNumber("STA_MALAK_JEDI") <= 2)
						{
							Db_PostString("3rd surrender", 10, 10, 5.0);
							SetGlobalNumber("STA_MALAK_JEDI", 3);
							ActionSurrenderToEnemies();
							SetGlobalFadeOut(0.5, 1.0);
							SetGlobalFadeIn(1.0, 1.0);
							DelayCommand(0.5, UT_NPC_InitConversation("sta45d_cutscene"));
						}
					else if (GetIsObjectValid(oCaptive4) && GetGlobalNumber("STA_MALAK_JEDI") <= 3)
						{
							Db_PostString("4th surrender", 10, 10, 5.0);
							SetGlobalNumber("STA_MALAK_JEDI", 4);
							ActionSurrenderToEnemies();
							SetGlobalFadeOut(0.5, 1.0);
							SetGlobalFadeIn(1.0, 1.0);
							DelayCommand(0.5, UT_NPC_InitConversation("sta45d_cutscene"));
						}
					else if (GetIsObjectValid(oCaptive5) && GetGlobalNumber("STA_MALAK_JEDI") <= 4)
						{
							Db_PostString("5th surrender", 10, 10, 5.0);
							SetGlobalNumber("STA_MALAK_JEDI", 5);
							ActionSurrenderToEnemies();
							SetGlobalFadeOut(0.5, 1.0);
							SetGlobalFadeIn(1.0, 1.0);
							DelayCommand(0.5, UT_NPC_InitConversation("sta45d_cutscene"));
						}
					else if (GetIsObjectValid(oCaptive6) && GetGlobalNumber("STA_MALAK_JEDI") <= 5)
						{
							Db_PostString("6th surrender", 10, 10, 5.0);
							SetGlobalNumber("STA_MALAK_JEDI", 6);
							ActionSurrenderToEnemies();
							SetGlobalFadeOut(0.5, 1.0);
							SetGlobalFadeIn(1.0, 1.0);
							DelayCommand(0.5, UT_NPC_InitConversation("sta45d_cutscene"));
						}
					else if (GetIsObjectValid(oCaptive7) && GetGlobalNumber("STA_MALAK_JEDI") <= 6)
						{
							Db_PostString("7th surrender", 10, 10, 5.0);
							SetGlobalNumber("STA_MALAK_JEDI", 7);
							ActionSurrenderToEnemies();
							SetGlobalFadeOut(0.5, 1.0);
							SetGlobalFadeIn(1.0, 1.0);
							DelayCommand(0.5, UT_NPC_InitConversation("sta45d_cutscene"));
						}
					else if (GetIsObjectValid(oCaptive8) && GetGlobalNumber("STA_MALAK_JEDI") <= 7)
						{
							Db_PostString("8th surrender", 10, 10, 5.0);
							SetGlobalNumber("STA_MALAK_JEDI", 8);
							ActionSurrenderToEnemies();
							SetGlobalFadeOut(0.5, 1.0);
							SetGlobalFadeIn(1.0, 1.0);
							DelayCommand(0.5, UT_NPC_InitConversation("sta45d_cutscene"));
						}
					else
						{
							Db_PostString("Last surrender", 10, 10, 5.0);
							ActionSurrenderToEnemies();
							DelayCommand(0.5, UT_NPC_InitConversation("sta_45darthMalak"));
						}

				}
				else if (GetGlobalNumber("STA_MALAK_TALK") == 1 && nCurHP <= 70)
					{
						Db_PostString("First surrender", 10, 10, 5.0);
						ActionSurrenderToEnemies();
						DelayCommand(0.5, UT_NPC_InitConversation("sta_45darthMalak"));
					}
		}
	else if (nUser == 1007) // DEATH
		{
			SetGlobalBoolean("STA_MALAK_DEAD", TRUE);
			
			object oDoor1 = GetObjectByTag("k45_door_malak", 0);
			
			SetLocked(oDoor1, FALSE);
			
			object oDoor2 = GetObjectByTag("k45_door_end", 0);
			
			SetLocked(oDoor2, FALSE);
			
			object oPC = GetFirstPC();
			
			if (GetGlobalNumber("G_FinalChoice") == 1 && GetGender(oPC) != GENDER_FEMALE)
				{
					DelayCommand(0.5, StartNewModule("STUNT_54a", "", "54"));
					Db_PostString("GAME OVER", 10, 10, 5.0);
				}
		}
	else if (nUser == 1008) // DISTURBED
		{

		}
	else if (nUser == 1009) // BLOCKED
		{

		}
	else if (nUser == 1010) // SPELL CAST AT
		{

		}
}

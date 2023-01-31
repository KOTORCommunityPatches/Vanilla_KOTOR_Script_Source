// Byte code does not match

#include "k_inc_lev"
 
 void SwitchPlayer(int nChar) {
 	SwitchPlayerCharacter(nChar);
 	
 	switch (nChar)
 		{
 			case 3:
 				// Jail breaker is HK.
 				break;
 			case 7:
 				// Jail breaker is T3.
 				break;
 			case 5:
 				// Jail breaker is Juhani.
 				break;
 			case 1:
 				// Jail breaker is Canderous.
 				LEV_StripCharacter(GetFirstPC(), GetObjectByTag("lev40_patgear", 0));
 				break;
 			default:
 				// Jail breaker is Mission or Jolee.
 				LEV_StripCharacter(GetFirstPC(), GetObjectByTag("lev40_ptylocker", 0));
 				break;
 		}
 	
 	return;
 }
 
 void PlayerStart(object oWP) {
 	switch (GetGlobalNumber("lev_escape"))
 		{
 			case 1:
 				SwitchPlayer(NPC_MISSION);
 				break;
 			case 2:
 				SwitchPlayer(NPC_T3_M4);
 				break;
 			case 3:
 				SwitchPlayer(NPC_JOLEE);
 				break;
 			case 4:
 				SwitchPlayer(NPC_CANDEROUS);
 				break;
 			case 5:
 				SwitchPlayer(NPC_JUHANI);
 				break;
 			case 6:
 				SwitchPlayer(NPC_HK_47);
 				break;
 		}
 	
 	AssignCommand(GetFirstPC(), ActionJumpToObject(oWP, FALSE));
 }
 
 void main() {
 	
 	object oStartWP;
 	object oSelf = OBJECT_SELF;
 	
 	DelayCommand(10.0, DestroyObject(oSelf, 0.0, TRUE));
 	
 	switch (GetGlobalNumber("lev_escape"))
 		{
 			case 1:
 				oStartWP = GetObjectByTag("lev40_wpescape1", 0);
 				break;
 			case 2:
 				oStartWP = GetObjectByTag("lev40_wpescape2", 0);
 				break;
 			case 3:
 				oStartWP = GetObjectByTag("lev40_wpescape3", 0);
 				break;
 			case 4:
 				oStartWP = GetObjectByTag("lev40_wpescape4", 0);
 				break;
 			case 5:
 				oStartWP = GetObjectByTag("lev40_wpescape5", 0);
 				break;
 			case 6:
 				oStartWP = GetObjectByTag("lev40_wpescape6", 0);
 				break;
 		}
 	
 	DelayCommand(0.2, PlayerStart(oStartWP));
 	DelayCommand(0.2, SetGlobalFadeIn(0.0, 1.0));
 }
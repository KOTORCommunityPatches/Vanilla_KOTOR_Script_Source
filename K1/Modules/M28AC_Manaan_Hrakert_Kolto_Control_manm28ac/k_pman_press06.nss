// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	int nCnt;
 	object oDoor = GetObjectByTag("man28ac_door01", nCnt);
 	
	while (GetIsObjectValid(oDoor))
		{
			SetLocked(oDoor, FALSE);
			
			nCnt++;
			
			oDoor = GetObjectByTag("man28ac_door01", nCnt);
		}
 	
	SetGlobalBoolean("MAN_PRESS_ON", FALSE);
 	
	if (GetGlobalNumber("MAN_LIVEB_STATE") != 2)
		{
			SetGlobalNumber("MAN_LIVEB_STATE", 3);
		}
 	
	SoundObjectStop(GetObjectByTag("forcefield", 0));
 	SoundObjectStop(GetObjectByTag("fincom", 0));
 	SoundObjectStop(GetObjectByTag("man28_decom03", 0));
 	SoundObjectPlay(GetObjectByTag("man28_decom02", 0));
 	
	DelayCommand(1.0, UT_NPC_InitConversation("man28_sur3", "", OBJECT_INVALID));
 }

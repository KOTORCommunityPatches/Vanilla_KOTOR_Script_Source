#include "k_inc_tar"
#include "k_inc_generic"

void EnableAI() {
	ClearAllActions();
	GN_SetSpawnInCondition(SW_FLAG_AI_OFF, FALSE);
}

void AddPartyMembers() {
	int nCnt;
	string sTag;
	int nNPCID;
	object oNPC;
	
	nCnt = 0;
	
	while (nCnt < GetGlobalNumber("TAR_ARENANPCS"))
		{
			nNPCID = GetGlobalNumber("TAR_ARENANPC" + IntToString(nCnt));
			
			switch (nNPCID)
				{
					case 0:
						sTag = "bastila";
						break;
					case 1:
						sTag = "cand";
						break;
					case 2:
						sTag = "carth";
						break;
					case 3:
						sTag = "hk47";
						break;
					case 4:
						sTag = "jolee";
						break;
					case 5:
						sTag = "juhani";
						break;
					case 6:
						sTag = "mission";
						break;
					case 7:
						sTag = "t3m4";
						break;
					case 8:
						sTag = "zaalbar";
						break;
				}
			
			oNPC = GetObjectByTag(sTag, 0);
			
			AddPartyMember(nNPCID, oNPC);
			SetCommandable(TRUE, oNPC);
			AssignCommand(oNPC, EnableAI());
			
			nCnt++;
		}
}

void JumpToWP1() {
	object oPC_WP = GetObjectByTag("tar02_spbendak", 0);
	if (GetIsObjectValid(oPC_WP))
		{
			if (GetDistanceBetween(GetFirstPC(), oPC_WP) > 30.0)
				{
					ClearAllActions();
					JumpToObject(GetObjectByTag("tar02_spbendak", 0), FALSE);
				}
		}
}

void JumpToWP2() {
	ClearAllActions();
	ActionPlayAnimation(ANIMATION_LOOPING_PAUSE, 1.0, 1.0);
	ActionJumpToObject(GetObjectByTag("tar02_spbendak", 0), FALSE);
	DelayCommand(2.0, JumpToWP1());
}

void AddMedPac() {
	object oMeds = GetObjectByTag("tar02_firstaid", 0);
	if (!GetIsObjectValid(GetItemPossessedBy(oMeds, "g_i_medeqpmnt01")) && GetGlobalBoolean("Tar_DuelLost"))
		{
			CreateItemOnObject("g_i_medeqpmnt01", oMeds, 1);
		}
}

void StopCrowdSFX() {
	object oCrowd = GetObjectByTag("tar_duel_crowd", 0);
	SoundObjectStop(oCrowd);
	DelayCommand(0.5, AmbientSoundPlay(GetArea(GetFirstPC())));
	DelayCommand(0.5, MusicBackgroundPlay(GetArea(GetFirstPC())));
}

void main() {
	
	object oDueler;
	int nGlobal = GetGlobalNumber("tar_duel");
	int nNum1;
	object oObject1;
	int nNum2;
	string sString1;
	
	if (!GetGlobalBoolean("Tar_DuelLost"))
		{
			nGlobal--;
		}
	
	switch (nGlobal)
		{
			case 0:
				oDueler = GetObjectByTag("deadeyedun021", 0);
				break;
			case 1:
				oDueler = GetObjectByTag("gerlontwof021", 0);
				break;
			case 2:
				oDueler = GetObjectByTag("ice021", 0);
				break;
			case 3:
				oDueler = GetObjectByTag("marl021", 0);
				break;
			case 4:
				oDueler = GetObjectByTag("twitch021", 0);
				break;
			case 6:
				Db_PostString("BENDAK MAD", 5, 5, 1.0);
				oDueler = GetObjectByTag("Bendakstar021", 0);
				break;
		}
	
	StopCrowdSFX();
	
	SetGlobalBoolean("TAR_DUELINPROGRESS", FALSE);
	
	SetMinOneHP(GetFirstPC(), FALSE);
	
	AddMedPac();
	
	AssignCommand(GetFirstPC(), JumpToWP2());
	
	DelayCommand(3.0, AddPartyMembers());
}

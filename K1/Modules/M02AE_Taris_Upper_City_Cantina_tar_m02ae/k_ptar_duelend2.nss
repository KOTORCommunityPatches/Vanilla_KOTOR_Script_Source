#include "k_inc_tar"
#include "k_inc_generic"

void main() {
	
	object oDueler;
	int nGlobal = GetGlobalNumber("tar_duel");
	int nCnt;
	object oObject1;
	int nNPCID;
	string sTag;
	
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
	
	SetGlobalBoolean("TAR_DUELINPROGRESS", FALSE);
	
	SetMinOneHP(GetFirstPC(), FALSE);
	
	if (nGlobal < 6)
		{
			SetCommandable(TRUE, oDueler);
			SignalEvent(oDueler, EventUserDefined(5000));
		}
	
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("tar02_spbendak", 0), 0));
	
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
			
			AddPartyMember(nNPCID, GetObjectByTag(sTag, 0));
			
			nCnt++;
		}
}

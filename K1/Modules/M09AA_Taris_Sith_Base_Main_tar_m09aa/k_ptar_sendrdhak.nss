// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

void main() {
	
	object oDroid;
	int nCnt;
	
	SetGlobalBoolean("TAR_SITHDROIDSHACKED", TRUE);
	
	nCnt = 0;
	
	while (GetIsObjectValid(oDroid = GetObjectByTag("tar09_wardrd", nCnt)))
		{
			ChangeToStandardFaction(oDroid, STANDARD_FACTION_INSANE);
			
			nCnt++;
		}
}

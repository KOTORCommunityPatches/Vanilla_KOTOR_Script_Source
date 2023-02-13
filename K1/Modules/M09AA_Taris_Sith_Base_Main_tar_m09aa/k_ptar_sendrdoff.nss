// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

void main() {
	
	object oDroid;
	int nCnt;
	
	SetGlobalBoolean("Tar_SithPatrolDroid", TRUE);
	
	nCnt = 0;
	
	while (GetIsObjectValid(oDroid = GetObjectByTag("tar09_wardrd", nCnt)))
		{
			SignalEvent(oDroid, EventUserDefined(2000));
			
			nCnt++;
		}
}

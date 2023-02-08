// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

void main() {
	
	object oSithCmd = GetObjectByTag("tar04_sithcomm0", 0);
	int nCnt;
	object oSithTrp;
	
	nCnt = 0;
	
	while (GetIsObjectValid(oSithTrp = GetObjectByTag("tar04_sithtrooper0", nCnt)))
		{
			AssignCommand(oSithTrp, ActionMoveToObject(oSithCmd, FALSE, 1.0));
			
			nCnt++;
		}
}

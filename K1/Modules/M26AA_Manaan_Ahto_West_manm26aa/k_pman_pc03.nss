void main() {
	
	SetGlobalBoolean("MAN_PCTRIAL", TRUE);
	
	int nJudge = 1;
	int bLock = TRUE;
	object oJudge = GetObjectByTag("man26_seljud" + IntToString(nJudge), 0);
	
	while (GetIsObjectValid(oJudge))
		{
			SetLockOrientationInDialog(oJudge, bLock);
			
			nJudge++;
			
			oJudge = GetObjectByTag(("man26_seljud" + IntToString(nJudge)), 0);
		}
	
	SetLockOrientationInDialog(GetObjectByTag("man26_sithac", 0), bLock);
	SetLockOrientationInDialog(GetFirstPC(), bLock);
}

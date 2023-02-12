// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void RunEvent(object oTarget) {
	object oArea = GetArea(OBJECT_SELF);
	
	SignalEvent(oTarget, EventUserDefined(2000));
}

void main() {
	
	int nCnt;
	object oExp;
	
	nCnt = 1;
	
	while (GetIsObjectValid(oExp = GetNearestObjectByTag("tar08_wpexplosion", OBJECT_SELF, nCnt)) && nCnt < 3)
		{
			Db_PostString("EXPLOSION", 5, 5, 2.0);
			
			DelayCommand((nCnt - 1) * 2.0, RunEvent(oExp));
			
			nCnt++;
		}
}

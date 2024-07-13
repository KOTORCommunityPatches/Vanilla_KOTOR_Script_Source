#include "k_inc_utility"
#include "k_inc_debug"

void main() {
	
	UT_ActionPauseConversation(2.0);
	
	int nTalk = GetGlobalNumber("STA_MALAK_TALK") + 1;
	
	SetGlobalNumber("STA_MALAK_TALK", nTalk);
	
	Db_PostString("Malak Talk=" + IntToString(nTalk), 10, 10, 5.0);
	
	SetFacingPoint(GetPosition(GetFirstPC()));
	SetLockOrientationInDialog(OBJECT_SELF, FALSE);
}

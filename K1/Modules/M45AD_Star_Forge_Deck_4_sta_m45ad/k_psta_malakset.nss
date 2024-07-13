#include "k_inc_debug"

void main() {
	
	ActionPauseConversation();
	
	int nTalk = GetGlobalNumber("STA_MALAK_TALK") + 1;
	
	SetGlobalNumber("STA_MALAK_TALK", nTalk);
	
	Db_PostString("Malak Talk=" + IntToString(nTalk), 10, 10, 5.0);
	
	ActionResumeConversation();
}

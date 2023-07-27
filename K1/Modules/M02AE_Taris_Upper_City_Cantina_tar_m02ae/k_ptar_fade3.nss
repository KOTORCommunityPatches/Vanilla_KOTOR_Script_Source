#include "k_inc_tar"
#include "k_inc_generic"

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
	
	if (nGlobal < 6)
		{
			SetCommandable(1, oDueler);
			DelayCommand(0.5, SignalEvent(oDueler, EventUserDefined(5000)));
		}
	
	ActionPauseConversation();
	
	SetGlobalFadeOut(0.0, 0.5);
	
	DelayCommand(4.0, SetGlobalFadeIn(0.0, 2.0));
	
	ActionWait(2.5);
	ActionResumeConversation();
}

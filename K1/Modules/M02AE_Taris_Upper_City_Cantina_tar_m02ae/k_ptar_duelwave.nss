#include "k_inc_tar"

void main() {
	
	object oDueler;
	int nGlobal = GetGlobalNumber("tar_duel");
	object oPC = GetFirstPC();
	float fDelay;
	
	switch (nGlobal)
		{
			case 0:
				oDueler = GetObjectByTag("deadeyedun021", 0);
				fDelay = 6.0;
				break;
			case 1:
				oDueler = GetObjectByTag("gerlontwof021", 0);
				fDelay = 7.0;
				break;
			case 2:
				oDueler = GetObjectByTag("ice021", 0);
				fDelay = 9.0;
				break;
			case 3:
				oDueler = GetObjectByTag("marl021", 0);
				fDelay = 5.0;
				break;
			case 4:
				oDueler = GetObjectByTag("twitch021", 0);
				fDelay = 12.0;
				break;
			case 6:
				Db_PostString("BENDAK MAD", 5, 5, 1.0);
				oDueler = GetObjectByTag("Bendakstar021", 0);
				fDelay = 12.0;
				break;
		}
	
	Db_PostString("WAVING - " + GetTag(oDueler), 5, 5, 5.0);
	
	AssignCommand(oDueler, ClearAllActions());
	DelayCommand(fDelay, AssignCommand(oDueler, ActionPlayAnimation(ANIMATION_FIREFORGET_VICTORY1, 0.5)));
	
	ActionPauseConversation();
	ActionWait(fDelay);
	ActionResumeConversation();
}

#include "k_inc_debug"

void main() {
	
	object oStampy = GetObjectByTag("tar05_stampy", 0);
	int int1;
	object object3;
	
	if (GetIsObjectValid(oStampy))
		{
			Db_PostString("GOOD STAMPY", 5, 5, 5.0);
		}
	
	ChangeToStandardFaction(oStampy, STANDARD_FACTION_NEUTRAL);
	ActionPauseConversation();
	ActionWait(5.0);
	ActionResumeConversation();
}

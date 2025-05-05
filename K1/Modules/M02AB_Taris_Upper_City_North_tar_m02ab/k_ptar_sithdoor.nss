#include "k_inc_utility"
#include "k_inc_debug"

void main() {
	
	object oNPC = GetPartyMemberByIndex(0);
	
	if (!GetIsObjectValid(oNPC))
		{
			Db_PostString("BAD OPENER", 5, 5, 5.0);
		}
		else
			{
				Db_PostString("OPENER - " + GetTag(oNPC), 5, 5, 5.0);
			}
	
	if (!GetLocked(OBJECT_SELF))
		{
			return;
		}
	
	BarkString(OBJECT_SELF, 22073);
}

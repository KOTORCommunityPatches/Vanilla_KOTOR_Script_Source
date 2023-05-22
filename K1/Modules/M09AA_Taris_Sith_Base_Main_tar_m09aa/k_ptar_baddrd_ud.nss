#include "k_inc_debug"
#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
		}
	else if (nUser == 1002) // PERCEIVE
		{

		}
	else if (nUser == 1003) // END OF COMBAT
		{

		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ATTACKED
		{

		}
	else if (nUser == 1006) // DAMAGED
		{

		}
	else if (nUser == 1007) // DEATH
		{
			object oDoor = GetObjectByTag("ptar_trapdoor", 0);
			SetLocked(oDoor, FALSE);
		}
	else if (nUser == 1008) // DISTURBED
		{

		}
	else if (nUser == 1009) // BLOCKED
		{

		}
	else if (nUser == 1010) // SPELL CAST AT
		{

		}
	else if (nUser == 2000))
		{
			effect eEffect;
			
			SetGlobalBoolean("Tar_SithDroid", TRUE);
			
			if (GetIsConversationActive())
				{
					ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
				}
			
			ClearAllActions();
			ClearAllEffects();
			PlaySound("gen_shieldredoff");
			
			if (GetIsConversationActive())
				{
					ActionPlayAnimation(ANIMATION_LOOPING_SPASM, 1.0, 4.0);
					ActionDoCommand(ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1));
				}
		}
	else if (nUser == 3000))
		{
			Db_PostString("PLAYING DROID ROAR", 5, 5, 5.0);
			PlaySound("c_drdmk1_bat1");
		}
	else if (nUser == HOSTILE_RETREAT)
		{
			UT_ReturnToBase("wp_homebase");
		}
}

// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_generic"
#include "k_inc_tar"
 
 void SignalExp(object oExp) {
 	object oArea = GetArea(OBJECT_SELF);
 	SignalEvent(oExp, EventUserDefined(2000));
 }
 
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
			if (GetCurrentHitPoints(OBJECT_SELF) < GetMaxHitPoints(OBJECT_SELF) / 2)
				{
					object oDavik = GetObjectByTag("davik082", 0);
					object oExp = GetNearestObjectByTag("tar08_wpexplosion", oDavik, 1);
					
					SignalExp(oExp);
					
					SetMinOneHP(oDavik, FALSE);
					ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oDavik);
				}
		}
	else if (nUser == 1007) // DEATH
		{

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
	else if (nUser == 2000)
		{
			int nNum;
			object oObj;
			
			Db_PostString("Surrendering", 5, 5, 5.0);
			
			ClearAllActions();
			SurrenderToEnemies();
			CancelCombat(GetPartyMemberByIndex(0));
			NoClicksFor(0.7);
			DelayCommand(0.5, ActionStartConversation(GetPartyMemberByIndex(0), "tar08_calo082", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 		}
 }

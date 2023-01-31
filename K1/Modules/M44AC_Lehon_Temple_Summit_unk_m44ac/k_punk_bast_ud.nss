// Byte code does not match
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
			if (GetMaxHitPoints(OBJECT_SELF) - GetCurrentHitPoints(OBJECT_SELF) > 150)
				{
					SurrenderToEnemies();
					ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
					ClearAllActions();
					CancelCombat(GetPartyMemberByIndex(0));
					CancelCombat(GetPartyMemberByIndex(1));
					CancelCombat(GetPartyMemberByIndex(2));
					SetPartyLeader(NPC_PLAYER);
					DelayCommand(1.0, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
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
}
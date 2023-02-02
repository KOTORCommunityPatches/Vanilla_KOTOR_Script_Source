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
	else if (nGlobal == 10) // CUSTOM EVENT
		{
			object oWP01 = GetObjectByTag("k33a_way_shaar3", 0);
			object oWP02 = GetObjectByTag("k33a_way_shaar4", 0);
			object oExit = GetObjectByTag("k33_way_yuthuraexit", 0);
			
			ActionMoveToObject(oWP01, TRUE);
			ActionMoveToObject(oWP02, TRUE);
			ActionMoveToObject(oExit, TRUE);
			ActionDoCommand(DestroyObject(OBJECT_SELF));
			SetCommandable(FALSE, OBJECT_SELF);
		}

}

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
			object oGate = GetObjectByTag("tar04_maingate", 0);
			object oRakghoul = GetObjectByTag("hendarsfate", 0);
			
			SetGlobalNumber("TAR_HENDAR", 2);
			
			ChangeToStandardFaction(oRakghoul, 1);
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

// Byte code does not match
// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetTestState(int nValue) {
	SetGlobalNumber("KOR_SITHTEST", nValue);
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

		}
	else if (nUser == 1007) // DEATH
		{
			SetTestState(6);
			
			object oUthar = GetObjectByTag("kor35_uthar", 0);
			object oLast = GetLastKiller();
			
			AssignCommand(oUthar, ActionStartConversation(oLast, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
		}
	else if (nUser == 1008) // DISTURBED
		{

		}
}

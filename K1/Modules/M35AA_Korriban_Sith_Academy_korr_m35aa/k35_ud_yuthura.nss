// Byte code does not match
// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetTestState(int nValue) {
	SetGlobalNumber("KOR_SITHTEST", nValue);
}

void SetYuthuraState(int nValue) {
	SetGlobalNumber("KOR_YUTHURA1", nValue);
}

int GetSithHostile() {
	return GetGlobalNumber("KOR_SITH_HOSTILE");
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
			if (GetSithHostile() == 3 && !GetIsObjectValid(GetObjectByTag("kor35_uthar", 0)))
				{
					SetYuthuraState(3);
					SetTestState(10);
				}
				else if (GetSithHostile() == 4)
					{
							object oWP = GetObjectByTag("k35_way_hall", 0);
							object oPC = GetFirstPC();
							
							AssignCommand(oPC, ActionJumpToObject(oWP, TRUE));
							
							object oUthar = GetObjectByTag("kor35_uthar", 0);
							object oUthar_WP = GetObjectByTag("k35_way_uthhall", 0);
							
							AssignCommand(oUthar_WP, ActionJumpToObject(oUthar, TRUE));
							
							SetTestState(9);
							
							DelayCommand(1.0, AssignCommand(oUthar_WP, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
					}
		}
	else if (nUser == 1008) // DISTURBED
		{

		}
}

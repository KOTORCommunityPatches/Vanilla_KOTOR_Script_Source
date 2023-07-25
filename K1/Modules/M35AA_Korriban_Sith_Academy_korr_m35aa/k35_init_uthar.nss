// Byte code does not match
// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetYuthuraState(int nValue) {
	SetGlobalNumber("KOR_YUTHURA1", nValue);
}

int GetUtharTalked() {
	object oUthar = GetObjectByTag("kor35_utharwynn", 0);
	return UT_GetTalkedToBooleanFlag(oUthar);
}

void main() {
	
	object oPC = GetFirstPC();
	
	if (GetIsObjectValid(oPC) && GetUtharTalked() == FALSE)
		{
			object oUthar = GetObjectByTag("kor35_utharwynn", 0);
			
			SetYuthuraState(2);
			
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oUthar, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
		}
}

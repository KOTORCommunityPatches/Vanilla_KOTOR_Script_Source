// Byte code does not match
// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetTestState(int nValue) {
	SetGlobalNumber("KOR_SITHTEST", nValue);
}

void SetSithHostile(int nValue) {
	SetGlobalNumber("KOR_SITH_HOSTILE", nValue);
}

void main() {
	
	AdjustAlignment(GetPCSpeaker(), ALIGNMENT_DARK_SIDE, 10);
	
	SetSithHostile(2);
	
	object oYuth = GetObjectByTag("kor35_yuthura", 0);
	
	SetPlotFlag(oYuth, TRUE);
	
	object oPC = GetFirstPC();
	
	if (GetIsObjectValid(GetItemPossessedBy(oPC, "k35_itm_sithpass")))
		{
			DestroyObject(GetItemPossessedBy(oPC, "k35_itm_sithpass"));
		}
	
	SetTestState(10);
	
	AssignCommand(oYuth, DelayCommand(3.0, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
	
	DestroyObject(OBJECT_SELF);
}

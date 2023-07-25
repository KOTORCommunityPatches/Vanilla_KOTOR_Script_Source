// Likely used a Korriban include that does not exist in the shipped game files. 

#include "k_inc_utility"
#include "k_inc_generic"

void SetTestState(int nValue) {
	SetGlobalNumber("KOR_SITHTEST", nValue);
}

void SetYuthuraState(int nValue) {
	SetGlobalNumber("KOR_YUTHURA1", nValue);
}

void SetSithHostile(int nValue) {
	SetGlobalNumber("KOR_SITH_HOSTILE", nValue);
}

void main() {
	
	AdjustAlignment(GetPCSpeaker(), ALIGNMENT_DARK_SIDE, 10);
	
	SetSithHostile(3);
	
	object oYuth = GetObjectByTag("kor35_yuthura", 0);
	object oPC = GetFirstPC();
	
	if (GetIsObjectValid(GetItemPossessedBy(oPC, "k35_itm_sithpass")))
		{
			DestroyObject(GetItemPossessedBy(oPC, "k35_itm_sithpass"));
		}
	
	AssignCommand(oYuth, SpeakString("I am dead!"));
	SpeakString("I am dead!");
	DestroyObject(oYuth);
	
	SetYuthuraState(3);
	SetTestState(10);
	
	DestroyObject(OBJECT_SELF);
}

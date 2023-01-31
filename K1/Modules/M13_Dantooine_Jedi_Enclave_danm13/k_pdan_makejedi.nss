#include "k_inc_dan"

void main() {
	
	object oPC = GetFirstPC();
	
	if (GetLevelByClass(CLASS_TYPE_JEDICONSULAR, oPC) == 0 && GetLevelByClass(CLASS_TYPE_JEDIGUARDIAN, oPC) == 0 && GetLevelByClass(CLASS_TYPE_JEDISENTINEL, oPC) == 0)
		{
			TurnPlayerIntoJedi();
		}
	
	ClearAllActions();
}
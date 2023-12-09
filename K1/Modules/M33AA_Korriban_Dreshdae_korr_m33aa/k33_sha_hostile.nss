// Likely used a Korriban include that does not exist in the shipped game files.

#include "k_inc_utility"

void SetShaarGlobal(int nState) {
	SetGlobalNumber("KOR33_SHAARDAN", nState);
}

void main() {
	
	SetShaarGlobal(4);
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	object oStudent1 = GetObjectByTag("k33_shastudent1", 0);
	object oStudent2 = GetObjectByTag("k33_shastudent2", 0);
	object oStudent3 = GetObjectByTag("k33_shastudent3", 0);
	object oWP = GetObjectByTag("k33_way_exit", 0);
	
	AssignCommand(oStudent1, ActionMoveToObject(oWP, TRUE));
	AssignCommand(oStudent2, ActionMoveToObject(oWP, TRUE));
	AssignCommand(oStudent3, ActionMoveToObject(oWP, TRUE));
	
	DelayCommand(3.0, DestroyObject(oStudent1));
	DelayCommand(3.0, DestroyObject(oStudent2));
	DelayCommand(3.0, DestroyObject(oStudent3));
	
	DelayCommand(1.0, ActionAttack(GetPCSpeaker()));
}

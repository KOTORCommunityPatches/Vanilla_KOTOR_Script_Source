// Likely used a Korriban include that does not exist in the shipped game files.

#include "k_inc_utility"

void DestroySelf() {
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, TRUE));
	SetCommandable(FALSE, OBJECT_SELF);
}

void main() {
	
	object oStudent1 = GetObjectByTag("k33_shastudent1", 0);
	object oStudent2 = GetObjectByTag("k33_shastudent2", 0);
	object oStudent3 = GetObjectByTag("k33_shastudent3", 0);
	
	DestroyObject(oStudent2, 0.0, TRUE);
	DestroyObject(oStudent3, 0.0, TRUE);
	DestroyObject(oStudent1, 0.0, TRUE);
	
	DestroySelf();
}

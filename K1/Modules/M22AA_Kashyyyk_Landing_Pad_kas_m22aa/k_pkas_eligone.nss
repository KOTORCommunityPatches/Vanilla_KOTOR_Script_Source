#include "k_inc_kas"

void main() {
	
	object oMatton = GetObjectByTag("kas22_dasol_01", 0);
	
	SetEliDeadLocal(TRUE, oMatton);
	SetGlobalFadeIn(0.0, 3.0);
	DestroyObject(OBJECT_SELF, 0.0, TRUE);
}
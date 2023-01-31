#include "k_inc_kas"

void main() {
	
	object oGuard = GetObjectByTag("kas23_wookgua_01", 0);
	
	if (GetChuundarDeadGlobal() == TRUE && GetIsObjectValid(oGuard) == TRUE)
		{
			DestroyObject(oGuard);
		}
}
#include "k_inc_tar"

void main() {
	
	object oTrooper = GetObjectByTag("Trooper1", 0);
	object oDroid1 = GetObjectByTag("droid1", 0);
	object oDroid2 = GetObjectByTag("droid2", 0);
	object oBith = GetObjectByTag("Bith", 0);
	object oDuros = GetObjectByTag("Duros", 0);
	
	if ((!GetIsObjectValid(oTrooper) && !GetIsObjectValid(oDroid1) && !GetIsObjectValid(oDroid2)) || (GetIsDead(oTrooper) && GetIsDead(oDroid1) && GetIsDead(oDroid2) && !GetLoadFromSaveGame()))
		{
			AssignCommand(oTrooper, SetIsDestroyable(TRUE, TRUE, TRUE));
			AssignCommand(oDroid1, SetIsDestroyable(TRUE, TRUE, TRUE));
			AssignCommand(oDroid2, SetIsDestroyable(TRUE, TRUE, TRUE));
			AssignCommand(oBith, SetIsDestroyable(TRUE, TRUE, TRUE));
			DestroyObject(oTrooper, 0.0, TRUE);
			DestroyObject(oDroid1, 0.0, TRUE);
			DestroyObject(oDroid2, 0.0, TRUE);
			DestroyObject(oBith, 0.0, TRUE);
			DestroyObject(oDuros, 0.0, TRUE);
			
			TAR_CleanupDeadObjects(OBJECT_SELF);
		}
}

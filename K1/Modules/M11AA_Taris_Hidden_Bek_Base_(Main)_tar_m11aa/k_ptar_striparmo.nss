#include "k_inc_tar"

void LockArmour() {
	
	object oArmour;
	
	Db_PostString("STRIP", 5, 5, 5.0);
	
	oArmour = TAR_StripSithArmor();
	
	if (GetIsObjectValid(oArmour))
		{
			SetItemNonEquippable(oArmour, TRUE);
		}
}

void main() {
	
	object oEntering = GetEnteringObject();
	object object3;
	
	if (GetIsPC(oEntering))
		{
			DelayCommand(1.0, LockArmour());
		}
}
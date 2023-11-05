#include "k_inc_tar"

void DisableSithArmor() {
	object oSithArmor;
	
	Db_PostString("STRIP", 5, 5, 5.0);
	
	oSithArmor = TAR_StripSithArmor();
	
	if (GetIsObjectValid(oSithArmor))
		{
			SetItemNonEquippable(oSithArmor, TRUE);
		}
}

void main() {
	
	object oEntering = GetEnteringObject();
	object oObject;
	
	if (GetIsPC(oEntering))
		{
			DelayCommand(1.0, DisableSithArmor());
		}
}

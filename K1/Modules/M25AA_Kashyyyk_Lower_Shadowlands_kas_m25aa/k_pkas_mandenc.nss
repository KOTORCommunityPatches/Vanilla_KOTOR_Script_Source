#include "k_inc_kas"

void main() {
	
	object oEntering = GetEnteringObject();
	object oWP1 = GetNearestObjectByTag("kas25_wp_mandenc", OBJECT_SELF, 1);
	object oWP2 = GetNearestObjectByTag("kas25_wp_mandenc", OBJECT_SELF, 2);
	object oWP3 = GetNearestObjectByTag("kas25_wp_mandenc", OBJECT_SELF, 3);
	location lWP1 = GetLocation(oWP1);
	location lWP2 = GetLocation(oWP2);
	location lWP3 = GetLocation(oWP3);
	
	if (GetIsPC(oEntering) == TRUE)
		{
			if (GetMandalorianPlotGlobal() == 0 && GetIsObjectValid(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oEntering)) == FALSE && GetIsObjectValid(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, oEntering)) == FALSE)
				{
					CreateObject(OBJECT_TYPE_CREATURE, "kas25_mandalor01", lWP1, 0);
					CreateObject(OBJECT_TYPE_CREATURE, "kas25_mandalor01", lWP2, 0);
					CreateObject(OBJECT_TYPE_CREATURE, "kas25_mandalor01", lWP3, 0);
					DestroyObject(OBJECT_SELF);
				}
				else if (GetMandalorianPlotGlobal() > 0 && GetMandalorianPlotGlobal() < 4)
					{
						CreateObject(OBJECT_TYPE_CREATURE, "kas25_mandalor02", lWP1, 0);
						CreateObject(OBJECT_TYPE_CREATURE, "kas25_mandalor02", lWP2, 0);
						CreateObject(OBJECT_TYPE_CREATURE, "kas25_mandalor02", lWP3, 0);
						DestroyObject(OBJECT_SELF);
					}
		}
}

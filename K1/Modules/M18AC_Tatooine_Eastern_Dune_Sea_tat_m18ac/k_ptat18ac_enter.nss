#include "k_inc_tat"

void CreateHolocron() {
	
	object oWP = GetWaypointByTag("K_SWG_BODY_LOC");
	location lWP = GetLocation(oWP);
	
	CreateObject(OBJECT_TYPE_PLACEABLE, "k_swg_helena01", lWP);
}

void main() {
	
	object oPC = GetFirstPC();
	object oHolocron = GetObjectByTag("K_SWG_HELENA01", 0);
	
	SandpeopleDisguiseUsable();
	
	if (GetGlobalNumber("K_SWG_HELENA") == 3 && GetIsObjectValid(oHolocron) == FALSE)
		{
			DelayCommand(1.0, CreateHolocron());
		}
}

#include "k_inc_man"

void SpawnNPC(string sTemplate) {
	
	location lLocation = GetLocation(GetObjectByTag(("cut_" + sTemplate), 0));
	
	if (GetIsObjectValid(GetObjectByTag(sTemplate, 0)) == FALSE)
		{
			CreateObject(OBJECT_TYPE_CREATURE, sTemplate, lLocation, 0);
		}
}

void main() {
	
	object oEntering = GetEnteringObject();
	
	if (GetFirstPC() == oEntering)
		{
			UT_SetPlotBooleanFlag(GetObjectByTag("man26_repsolshp", 0), SW_PLOT_BOOLEAN_01, FALSE);
			
			if (GetGlobalNumber("K_Geno_Lorgal") != 1)
				{
					DelayCommand(0.2, AssignCommand(GetObjectByTag("EnergyCage", 0), PlayAnimation(ANIMATION_PLACEABLE_OPEN)));
				}
			
			if (GetGlobalBoolean("MAN_HRAKERT_START"))
				{
					AssignCommand(GetObjectByTag("man26_repdip", 0), JumpToObject(GetObjectByTag("man26_wp_repdipt", 0)));
				}
			
			if (GetManaanMainPlotVariable() >= PLOT_HARVEST_STOPPED && GetManaanStarMapFound() && HasNeverTriggered())
				{
					object oDoor = GetObjectByTag("man26ac_door30", 0);
					
					AssignCommand(oDoor, ActionCloseDoor(oDoor));
					
					oDoor = GetObjectByTag("man26ac_door31", 0);
					
					AssignCommand(oDoor, ActionCloseDoor(oDoor));
					
					SpawnNPC("man26_cutdrd01");
					SpawnNPC("man26_cutdrd02");
					SpawnNPC("man26_cutdrd03");
					SpawnNPC("man26_cutdrd04");
					SpawnNPC("man26_cutsel01");
					
					SetAreaUnescapable(TRUE);
				}
			
			if (GetGlobalBoolean("MAN_SITHBASE_SEALED"))
				{
					DestroyObject(GetObjectByTag("man26_reptech", 0));
					DestroyObject(GetObjectByTag("man26_repint", 0));
					DestroyObject(GetObjectByTag("man26_sithpris", 0));
				}
		}
}
void main() {
	int int1 = 0;
	while ((int1 < 6)) {
		{
			object oG_merc = GetObjectByTag("g_merc", int1);
			if (GetIsObjectValid(oG_merc)) {
				ChangeToStandardFaction(oG_merc, 1);
			}
			else {
				AurPostString("ERROR: Invalid Object Tag for Mercs", 10, 18, 10.0);
			}
		}
		(int1++);
	}
	ChangeToStandardFaction(GetObjectByTag("npc_berun", 0), 2);
	if ((GetGlobalNumber("604DAN_Vrook_Status") == 3)) {
		ChangeToStandardFaction(GetObjectByTag("npc_vrook", 0), 2);
	}
	if ((GetGlobalNumber("605DAN_Dopak") == 1)) {
		ChangeToStandardFaction(GetObjectByTag("npc_dopak", 0), 2);
		ChangeToStandardFaction(GetObjectByTag("npc_azkul", 0), 1);
	}
	else {
		ChangeToStandardFaction(GetObjectByTag("npc_dopak", 0), 1);
		ChangeToStandardFaction(GetObjectByTag("npc_azkul", 0), 1);
	}
}

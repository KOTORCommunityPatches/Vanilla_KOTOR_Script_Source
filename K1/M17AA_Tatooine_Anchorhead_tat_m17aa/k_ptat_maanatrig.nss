void main() {
	
	object oWP = GetWaypointByTag("tat17_maana_wp");
	location lMaana = GetLocation(oWP);
	
	if (GetGlobalNumber("K_SWG_HELENA") == 2)
		{
			CreateObject(OBJECT_TYPE_CREATURE, "tat17aa_bastplot", lMaana);
			DestroyObject(OBJECT_SELF);
		}
}

int StartingConditional() {
	if ((GetIsObjectValid(GetWaypointByTag("K_EBON_HAWK_LOCATION")) && GetIsObjectValid(GetItemPossessedBy(GetPCSpeaker(), "g_i_pazdeck")))) {
		return 1;
	}
	return 0;
}


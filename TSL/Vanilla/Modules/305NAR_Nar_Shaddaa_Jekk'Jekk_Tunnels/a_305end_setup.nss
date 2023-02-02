void main() {
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	if (GetIsObjectValid(oHanharr)) {
		AssignCommand(oHanharr, ClearAllActions());
		AssignCommand(oHanharr, ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_HANHARR_END_0"))));
	}
	if (GetIsObjectValid(oKreia)) {
		AssignCommand(oKreia, ClearAllActions());
		AssignCommand(oKreia, ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_END_KREIA_APPEAR"))));
	}
	if ((!GetIsObjectValid(oHanharr))) {
		CreateObject(1, "p_Hanharr", GetLocation(GetWaypointByTag("WP_HANHARR_END_0")), 0);
	}
	if ((!GetIsObjectValid(oKreia))) {
		CreateObject(1, "p_Kreia001", GetLocation(GetWaypointByTag("WP_END_KREIA_APPEAR")), 0);
	}
}

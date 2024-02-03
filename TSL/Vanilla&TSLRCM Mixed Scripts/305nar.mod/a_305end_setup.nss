struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	if (GetIsObjectValid(oHanharr)) {
		AssignCommand(oHanharr, ClearAllActions());
		AssignCommand(oHanharr, ActionJumpToLocation(Location(Vector((-96.07446), (-10.15614), (-0.46828)), 0.0)));
	}
	if (GetIsObjectValid(oKreia)) {
		AssignCommand(oKreia, ClearAllActions());
		AssignCommand(oKreia, ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_END_KREIA_APPEAR"))));
	}
	if ((!GetIsObjectValid(oHanharr))) {
		CreateObject(1, "p_Hanharr", Location(Vector((-96.07446), (-10.15614), (-0.46828)), 0.0), 0);
	}
	if ((!GetIsObjectValid(oKreia))) {
		CreateObject(1, "p_Kreia001", GetLocation(GetWaypointByTag("WP_END_KREIA_APPEAR")), 0);
	}
}


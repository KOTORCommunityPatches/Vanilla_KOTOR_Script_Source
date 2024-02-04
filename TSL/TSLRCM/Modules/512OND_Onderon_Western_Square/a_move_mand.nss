void main() {
	object oMand = GetObjectByTag("mand", 0);
	object oMn_dhagonoffice = GetWaypointByTag("mn_dhagonoffice");
	location location1 = GetLocation(oMn_dhagonoffice);
	if (GetIsObjectValid(oMand)) {
		AssignCommand(oMand, ClearAllActions());
	}
}
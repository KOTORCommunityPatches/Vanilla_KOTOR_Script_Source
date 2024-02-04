void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	AssignCommand(GetObjectByTag("Disciple", 0), ActionJumpToLocation(Location(Vector(54.83921, 59.72037, 1.8), 0.0)));
	if ((GetGlobalNumber("101PER_Revan_End") == 0)) {
		CreateObject(1, "carth_holo", GetLocation(GetObjectByTag("WP_carth", 0)), 0);
	}
	else {
		CreateObject(1, "Rep_Gen", GetLocation(GetObjectByTag("WP_carth", 0)), 0);
	}
	DelayCommand(0.2, AssignCommand(GetObjectByTag("carth_holo", 0), SetFacingPoint(GetPositionFromLocation(GetLocation(GetObjectByTag("Disciple", 0))))));
}
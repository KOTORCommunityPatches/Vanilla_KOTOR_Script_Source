void main() {
	object oCannok_Scene = GetObjectByTag("Cannok_Scene", 0);
	if ((!GetIsObjectValid(oCannok_Scene))) {
		return;
	}
	object oMaalraas_Scene = GetObjectByTag("Maalraas_Scene", 0);
	if ((!GetIsObjectValid(oMaalraas_Scene))) {
		return;
	}
	location location1 = GetLocation(oMaalraas_Scene);
	vector struct2 = GetPositionFromLocation(location1);
	DelayCommand(1.5, AssignCommand(oCannok_Scene, SetFacingPoint(struct2)));
}

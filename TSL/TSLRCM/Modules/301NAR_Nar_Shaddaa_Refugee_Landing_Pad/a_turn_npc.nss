void main() {
	object oPC = GetFirstPC();
	vector struct2 = GetPositionFromLocation(GetLocation(oPC));
	AssignCommand(OBJECT_SELF, SetFacingPoint(struct2));
}
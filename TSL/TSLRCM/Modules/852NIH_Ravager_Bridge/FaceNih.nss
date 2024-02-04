void main() {
	object oPC = GetFirstPC();
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oDarthNihilus = GetObjectByTag("DarthNihilus", 0);
	AssignCommand(oPC, SetFacingPoint(GetPositionFromLocation(GetLocation(oDarthNihilus))));
	AssignCommand(oVisasMarr, SetFacingPoint(GetPositionFromLocation(GetLocation(oDarthNihilus))));
}
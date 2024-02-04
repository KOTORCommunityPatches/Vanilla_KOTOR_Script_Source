void main() {
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oDisciple = GetObjectByTag("Disciple", 0);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("Galaxymap", 0)));
	AssignCommand(oHandmaiden, ActionDoCommand(SetFacingPoint(struct2)));
	AssignCommand(oDisciple, ActionDoCommand(SetFacingPoint(struct2)));
	AssignCommand(oVisasMarr, ActionDoCommand(SetFacingPoint(struct2)));
	AssignCommand(oBaoDur, ActionDoCommand(SetFacingPoint(struct2)));
}
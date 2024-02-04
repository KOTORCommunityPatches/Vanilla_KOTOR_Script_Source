void main() {
	object oREThug5 = GetObjectByTag("REThug5", 0);
	object oREThug6 = GetObjectByTag("REThug6", 0);
	vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("Ratrin", 0)));
	AssignCommand(oREThug5, ActionDoCommand(SetFacingPoint(struct2)));
	AssignCommand(oREThug6, ActionDoCommand(SetFacingPoint(struct2)));
}
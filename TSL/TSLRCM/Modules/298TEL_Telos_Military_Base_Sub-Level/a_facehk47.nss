void main() {
	AssignCommand(GetObjectByTag("50CS", 0), SetFacingPoint(GetPositionFromLocation(GetLocation(GetFirstPC()))));
	AssignCommand(GetObjectByTag("502CS", 0), SetFacingPoint(GetPositionFromLocation(GetLocation(GetFirstPC()))));
	AssignCommand(GetObjectByTag("503CS", 0), SetFacingPoint(GetPositionFromLocation(GetLocation(GetFirstPC()))));
}
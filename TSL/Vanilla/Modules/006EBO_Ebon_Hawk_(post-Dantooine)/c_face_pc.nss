void main() {
	SetDialogPlaceableCamera(8);
	AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("Invis_Reaction", 0))));
}

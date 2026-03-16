struct structtype1 {
	float float1;
	float float3;
};

void main() {
	SetDialogPlaceableCamera(8);
	AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(GetObjectByTag("Invis_Reaction", 0))));
}


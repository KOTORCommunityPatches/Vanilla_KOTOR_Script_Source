void main() {
	AssignCommand(GetObjectByTag("201_ith_drd", 0), ActionMoveToObject(GetFirstPC(), 1, 1.5));
	AssignCommand(GetObjectByTag("DrdIth", 0), ActionMoveToObject(GetFirstPC(), 0, 3.0));
}


void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		AssignCommand(GetObjectByTag("203_Moza", 0), ActionJumpToObject(GetObjectByTag("wp_moza_office", 0), 1));
	}
	if ((nParam1 == 2)) {
		AssignCommand(GetObjectByTag("203_Moza", 0), ActionJumpToObject(GetObjectByTag("wp_moza_office_01", 0), 1));
	}
	if ((nParam1 == 3)) {
		AssignCommand(GetObjectByTag("203_Moza", 0), ActionJumpToObject(GetObjectByTag("wp_moza_office_02", 0), 1));
	}
	if ((nParam1 == 4)) {
		DestroyObject(GetObjectByTag("203_Moza", 0), 0.0, 0, 0.0, 0);
	}
}


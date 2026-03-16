void main() {
	object oFROM_102PER = GetObjectByTag("FROM_102PER", 0);
	object oWP_PC_ENTER2 = GetObjectByTag("WP_PC_ENTER2", 0);
	location location1 = GetLocation(oWP_PC_ENTER2);
	location location3 = GetLocation(oFROM_102PER);
	DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionJumpToLocation(location1)));
}


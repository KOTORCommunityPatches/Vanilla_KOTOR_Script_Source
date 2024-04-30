void main() {
	int nParam1 = GetScriptParameter(1);
	location location1 = GetLocation(GetObjectByTag(("wp_pc_death" + IntToString(nParam1)), 0));
	AssignCommand(GetFirstPC(), ActionJumpToLocation(location1));
	CreateObject(64, "darkforce", location1, 0);
	location1 = GetLocation(GetObjectByTag(("wp_death_invis" + IntToString(nParam1)), 0));
	AssignCommand(GetObjectByTag("pc_death", 0), ActionJumpToLocation(location1));
}


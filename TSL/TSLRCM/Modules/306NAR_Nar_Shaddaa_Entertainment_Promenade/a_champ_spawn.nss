void main() {
	object oWp_champsp = GetObjectByTag("wp_champsp", 0);
	object oWp_champm = GetObjectByTag("wp_champm", 0);
	location location1 = GetLocation(oWp_champsp);
	CreateObject(1, "n_commf003", location1, 0);
}
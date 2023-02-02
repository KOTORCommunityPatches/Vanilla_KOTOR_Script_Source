void main() {
	object oWP_MEDOFF = GetObjectByTag("WP_MEDOFF", 0);
	CreateObject(1, "n_commf003", GetLocation(oWP_MEDOFF), 0);
}

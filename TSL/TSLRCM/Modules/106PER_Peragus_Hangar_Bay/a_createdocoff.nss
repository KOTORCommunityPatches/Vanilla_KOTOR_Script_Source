void main() {
	object oDockOff = GetObjectByTag("DockOff", 0);
	if ((!GetIsObjectValid(oDockOff))) {
		object oWP_DOCKOFF = GetObjectByTag("WP_DOCKOFF", 0);
		CreateObject(1, "n_commf002", GetLocation(oWP_DOCKOFF), 0);
	}
}
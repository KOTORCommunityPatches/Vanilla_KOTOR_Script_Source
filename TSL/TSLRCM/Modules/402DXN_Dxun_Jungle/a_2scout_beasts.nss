void main() {
	object oWp_om_beast2spwn = GetWaypointByTag("wp_om_beast1spwn");
	CreateObject(1, "scout_boma", GetLocation(oWp_om_beast2spwn), 0);
	oWp_om_beast2spwn = GetWaypointByTag("wp_om_beast2spwn");
	CreateObject(1, "scout_boma", GetLocation(oWp_om_beast2spwn), 0);
}
void main() {
	object object1 = GetLastClosedBy();
	if (GetIsObjectValid(GetItemPossessedBy(object1, "DataPadMiner1"))) {
		object oInveb001 = GetObjectByTag("EboHiddenContainer", 0);
		if ((!GetIsObjectValid(oInveb001))) {
			object oWP_HIDDEN_CONTAINER = GetWaypointByTag("WP_HIDDEN_CONTAINER");
			location location1 = GetLocation(oWP_HIDDEN_CONTAINER);
			oInveb001 = CreateObject(64, "inveb001", location1, 0);
		}
	}
}

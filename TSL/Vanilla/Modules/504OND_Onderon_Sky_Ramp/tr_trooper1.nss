void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	object oDs_ro_sold_sp1 = GetObjectByTag("vaklu_sergeant", 0);
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") != 1)) {
		DelayCommand(0.2, AssignCommand(GetFirstPC(), ActionMoveToObject(GetWaypointByTag("wp_t1_pc"), 1, 1.0)));
		AssignCommand(oDs_ro_sold_sp1, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		location location1 = GetLocation(GetObjectByTag("mn_barracks", 0));
		object oShapeObject = GetFirstObjectInShape(4, 15.0, location1, 0, 65, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oShapeObject)) {
			ChangeToStandardFaction(oShapeObject, 1);
			oShapeObject = GetNextObjectInShape(4, 15.0, location1, 0, 65, [0.0,0.0,0.0]);
		}
		oDs_ro_sold_sp1 = GetObjectByTag("ds_ro_sold_sp1", 0);
		AssignCommand(oDs_ro_sold_sp1, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}

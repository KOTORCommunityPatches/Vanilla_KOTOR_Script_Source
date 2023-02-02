void main() {
	if ((((GetGlobalNumber("601DAN_Azkul") == 1) || (GetGlobalNumber("601DAN_Azkul") == 2)) && (GetGlobalNumber("601DAN_Battle_Mili") == 0))) {
		float float1 = 12.0;
		location location1 = GetLocation(GetObjectByTag("WP_mine_east", 0));
		location location3 = GetLocation(GetObjectByTag("WP_mine_west", 0));
		int int4 = 0;
		int int5 = 32767;
		int nGlobal = GetGlobalNumber("601DAN_Mines_West");
		int int8 = GetGlobalNumber("601DAN_Mines_East");
		int int10 = GetGlobalNumber("601DAN_Mines_East");
		int int12 = 0;
		object oShapeObject = GetFirstObjectInShape(4, float1, location1, int4, int5, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oShapeObject)) {
			if (((GetObjectType(oShapeObject) == 4) && (GetTrapBaseType(oShapeObject) != (-1)))) {
				(int12++);
			}
			oShapeObject = GetNextObjectInShape(4, float1, location1, int4, int5, [0.0,0.0,0.0]);
		}
		SetGlobalNumber("601DAN_Mines_East", int12);
		AurPostString(("Num East Mines: " + IntToString(int12)), 5, 20, 10.0);
		if (((int12 == 10) && (int12 > int8))) {
			AssignCommand(GetObjectByTag("MineCheckE", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		int10 = GetGlobalNumber("601DAN_Mines_West");
		int12 = 0;
		oShapeObject = GetFirstObjectInShape(4, float1, location3, int4, int5, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oShapeObject)) {
			if (((GetObjectType(oShapeObject) == 4) && (GetTrapBaseType(oShapeObject) != (-1)))) {
				(int12++);
			}
			oShapeObject = GetNextObjectInShape(4, float1, location3, int4, int5, [0.0,0.0,0.0]);
		}
		SetGlobalNumber("601DAN_Mines_West", int12);
		AurPostString(("Num West Mines: " + IntToString(int12)), 5, 21, 10.0);
		if (((int12 == 10) && (int12 > nGlobal))) {
			AssignCommand(GetObjectByTag("MineCheckW", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

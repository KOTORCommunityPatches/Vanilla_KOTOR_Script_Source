struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	object oNPC = GetFirstPC();
	location location1 = Location(Vector(122.1587, 149.1563, 0.1499999), 180.0);
	location location3 = Location(Vector(123.0031, 147.2146, 0.1674992), 180.0);
	location location5 = Location(Vector(119.9576, 148.2462, 0.15), 180.0);
	switch (nParam1) {
		case 0:
			SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0);
			SetPartyLeader(0xFFFFFFFF);
			AssignCommand(oNPC, ClearAllActions());
			location location7 = Location(Vector(121.6715, 104.7309, 1.154778), 175.0);
			AssignCommand(oNPC, ActionJumpToLocation(location7));
			DelayCommand(0.5, AssignCommand(oNPC, ActionForceMoveToLocation(location1, 1, 30.0)));
			oNPC = GetPartyMemberByIndex(1);
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToLocation(Location(Vector(123.1044, 102.8524, 1.624398), 180.0)));
			DelayCommand(0.5, AssignCommand(oNPC, ActionForceMoveToLocation(location3, 1, 30.0)));
			oNPC = GetPartyMemberByIndex(2);
			AssignCommand(oNPC, ClearAllActions());
			location location10 = Location(Vector(119.7747, 103.297, 1.513258), 180.0);
			AssignCommand(oNPC, ActionJumpToLocation(location10));
			DelayCommand(0.5, AssignCommand(oNPC, ActionForceMoveToLocation(location5, 1, 30.0)));
			{
				object oDarthSion = GetObjectByTag("DarthSion", 0);
				location location12 = Location(Vector(121.55, 98.52, 2.7), 180.0);
				location location14 = Location(Vector(121.55, 106.0, 1.0), 180.0);
				location location16 = Location(Vector(119.69, 101.5, 1.4), 180.0);
				SetLightsaberPowered(oDarthSion, 1, 1, 0);
				AssignCommand(oDarthSion, JumpToLocation(location12));
				AssignCommand(oDarthSion, ActionForceMoveToLocation(location14, 0, 30.0));
				location location18 = Location(Vector(119.888, 94.97846, 3.15), 180.0);
				location location20 = Location(Vector(119.6874, 103.9205, 1.357382), 180.0);
				location location22 = Location(Vector(122.8143, 92.3206, 3.15), 180.0);
				location location24 = Location(Vector(123.4202, 100.1289, 2.305266), 178.6);
				object oTe_assassin = CreateObject(1, "te_assassin", location18, 0);
				DelayCommand(2.5, AssignCommand(oTe_assassin, ActionForceMoveToLocation(location16, 1, 30.0)));
				object oSithassassin = CreateObject(1, "sithassassin", location22, 0);
				DelayCommand(2.5, AssignCommand(oSithassassin, ActionForceMoveToLocation(location24, 1, 30.0)));
			}
			break;
		case 1:
								ClearAllActions();
;
		case 2:
		case 3:
		case 4:
	}
}


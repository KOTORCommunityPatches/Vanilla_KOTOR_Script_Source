struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oDarthSion = GetObjectByTag("DarthSion", 0);
	object oKreia = GetObjectByTag("kreia", 0);
	object oAtton = GetObjectByTag("atton", 0);
	if ((((!GetIsObjectValid(oDarthSion)) || (!GetIsObjectValid(oKreia))) || (!GetIsObjectValid(oAtton)))) {
		AurPostString("No Darth Sion and/or Kreia, don't bother with the rest of the cut scene", 5, 7, 10.0);
		return;
	}
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AssignCommand(oKreia, ClearAllActions());
			AssignCommand(oKreia, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_kreia_start", 0))));
			vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_fight_kreia", 0)));
								;
;
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
	}
}


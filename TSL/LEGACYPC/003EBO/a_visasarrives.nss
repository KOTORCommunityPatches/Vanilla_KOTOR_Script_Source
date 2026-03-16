// Prototypes
string sub1(int intParam1);

string sub1(int intParam1) {
	switch (intParam1) {
		case 0:
			return "atton";
			break;
		case 1:
			return "baodur";
			break;
		case 2:
			return "mand";
			break;
		case 11:
			return "disciple";
			break;
		case 3:
			return "g0t0";
			break;
		case 4:
			return "handmaiden";
			break;
		case 10:
			return "hanharr";
			break;
		case 5:
			return "hk47";
			break;
		case 6:
			return "kreia";
			break;
		case 7:
			return "mira";
			break;
		case 8:
			return "t3m4";
			break;
		case 9:
			return "visasmarr";
			break;
	}
	return "ERROR";
}

void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oPC = GetFirstPC();
		AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_visaspc_sp", 0), 1));
		AssignCommand(oPC, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_visaspc_001", 0)), 0));
	}
	else {
		if ((nParam1 == 2)) {
			AssignCommand(GetFirstPC(), ActionPlayAnimation(10010, 1.0, 0.0));
		}
		else {
			if ((nParam1 == 3)) {
				AssignCommand(GetFirstPC(), ActionPlayAnimation(10011, 1.0, 0.0));
			}
			else {
				if ((nParam1 == 4)) {
					AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_visaspc_002", 0), 0, 1.0));
				}
				else {
					if ((nParam1 == 5)) {
						AssignCommand(GetObjectByTag("VisasCut", 0), ActionPlayAnimation(3, 1.0, (-1.0)));
					}
					else {
						if ((nParam1 == 6)) {
							AssignCommand(GetObjectByTag("VisasCut", 0), ActionMoveToObject(GetObjectByTag("wp_visas_001", 0), 0, 1.0));
						}
						else {
							if ((nParam1 == 7)) {
								object oVisasCut = GetObjectByTag("VisasCut", 0);
								AssignCommand(oVisasCut, ClearAllActions());
								CreatureFlourishWeapon(oVisasCut);
							}
							else {
								if ((nParam1 == 8)) {
									object object14 = GetObjectByTag("VisasCut", 0);
									ChangeToStandardFaction(object14, 1);
									AssignCommand(object14, ActionAttack(GetFirstPC(), 0));
								}
								else {
									if ((nParam1 == 9)) {
										int int3 = 0;
										object object17;
										int3 = 0;
										while ((int3 < 12)) {
											object17 = GetObjectByTag(sub1(int3), 0);
											SetMinOneHP(object17, 0);
											(++int3);
										}
										AddAvailableNPCByTemplate(9, "p_visas");
										CreateObject(1, "visasbed", GetLocation(GetObjectByTag("wp_visas_002", 0)), 0);
										DelayCommand(1.0, AssignCommand(GetObjectByTag("VisasBed", 0), ActionPlayAnimation(10375, 1.0, (-1.0))));
										AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_visaspc_003", 0), 1));
										AssignCommand(GetObjectByTag("Atton", 0), ActionJumpToObject(GetObjectByTag("wp_atton_001", 0), 1));
										AssignCommand(GetObjectByTag("Disciple", 0), ClearAllActions());
										AssignCommand(GetObjectByTag("Handmaiden", 0), ClearAllActions());
										AssignCommand(GetObjectByTag("Handmaiden", 0), ActionJumpToObject(GetObjectByTag("wp_disciple_001", 0), 1));
										AssignCommand(GetObjectByTag("Disciple", 0), ActionJumpToObject(GetObjectByTag("wp_disciple_001", 0), 1));
									}
									else {
										if ((nParam1 == 10)) {
											object object32 = GetFirstPC();
											AssignCommand(object32, ClearAllActions());
											AssignCommand(object32, ActionMoveToLocation(GetLocation(GetObjectByTag("wp_visaspc_004", 0)), 0));
										}
										else {
											if ((nParam1 == 11)) {
												AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_visaspc_005", 0), 0, 1.0));
												AssignCommand(GetObjectByTag("Handmaiden", 0), ActionMoveToObject(GetObjectByTag("wp_disciple_002", 0), 0, 1.0));
											}
											else {
												if ((nParam1 == 12)) {
													AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_visaspc_005", 0), 0, 1.0));
													AssignCommand(GetObjectByTag("Disciple", 0), ActionMoveToObject(GetObjectByTag("wp_disciple_002", 0), 0, 1.0));
												}
												else {
													if ((nParam1 == 13)) {
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}


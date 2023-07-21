// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
int sub7(string stringParam1);
void sub6(int intParam1, string stringParam2, location locationParam3);
void sub5();
void sub4();
object sub3(int intParam1);
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub1(string stringParam1);

int sub7(string stringParam1) {
	int int1 = 0;
	string sModule = GetModuleFileName();
	PrintString(((("JUMP VALIDATION: CURRENT = " + sModule) + " LAST = ") + stringParam1));
	PrintString(((("JUMP VALIDATION: SUBSTRING: " + GetSubString(sModule, 0, 3)) + " = ") + GetSubString(stringParam1, 0, 3)));
	if ((GetSubString(sModule, 0, 3) == GetSubString(stringParam1, 0, 3))) {
		int1 = 1;
	}
	else {
		if ((sModule != "ebo_m12aa")) {
			SetGlobalString("K_LAST_MODULE", "NO_MODULE");
		}
	}
	return int1;
}

void sub6(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void sub5() {
	object oNPC;
	int int1 = 0;
	int1;
	while ((int1 < 3)) {
		oNPC = GetPartyMemberByIndex(int1);
		if (GetIsObjectValid(oNPC)) {
			ApplyEffectToObject(0, EffectHeal(500), oNPC, 0.0);
			ApplyEffectToObject(0, EffectHealForcePoints(500), oNPC, 0.0);
		}
		(int1++);
	}
}

void sub4() {
	int int1 = 1;
	object oNearestK_LAST_LOCATION = GetNearestObjectByTag("K_LAST_LOCATION", GetFirstPC(), int1);
	while (GetIsObjectValid(oNearestK_LAST_LOCATION)) {
		sub1(("LOOPING " + GetTag(oNearestK_LAST_LOCATION)));
		DestroyObject(oNearestK_LAST_LOCATION, 0.0, 0, 0.0);
		(int1++);
		oNearestK_LAST_LOCATION = GetNearestObjectByTag("K_LAST_LOCATION", GetFirstPC(), int1);
	}
}

object sub3(int intParam1) {
	object object1;
	if ((intParam1 == 10)) {
		return GetWaypointByTag("tar02_sw02af");
	}
	else {
		if ((intParam1 == 15)) {
			return GetWaypointByTag("K_DAN_EBON_HAWK_TRANSITION");
		}
		else {
			if ((intParam1 == 20)) {
				return GetWaypointByTag("K_KAS_EBON_HAWK_TRANSITION");
			}
			else {
				if ((intParam1 == 25)) {
					return GetWaypointByTag("K_MAN_EBON_HAWK_TRANSITION");
				}
				else {
					if ((intParam1 == 30)) {
						return GetWaypointByTag("K_KOR_EBON_HAWK_TRANSITION");
					}
					else {
						if ((intParam1 == 35)) {
							return GetWaypointByTag("K_TAT_EBON_HAWK_TRANSITION");
						}
						else {
							if ((intParam1 == 45)) {
								return GetWaypointByTag("K_UNK_EBON_HAWK_TRANSITION");
							}
						}
					}
				}
			}
		}
	}
	return OBJECT_INVALID;
}

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub1(string stringParam1) {
	if ((!ShipBuild())) {
		PrintString(stringParam1);
	}
}

void main() {
	sub1("Starting Transit System Script");
	int int1 = GetGlobalBoolean("TAR_FIRST_SWOOP_USE");
	if ((int1 == 0)) {
		SetGlobalBoolean("TAR_FIRST_SWOOP_USE", 1);
		AddJournalQuestEntry("k_rapidtransit", 99, 0);
	}
	sub2("FIRING RETURN SPACEPORT", 10, 10, 4.0);
	string string1;
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	int int5 = GetGlobalBoolean("K_MESS_JUHANI");
	object oK_EBON_HAWK_LOCATION = GetWaypointByTag("K_EBON_HAWK_LOCATION");
	object oK_TARIS_APARTMENT = GetWaypointByTag("K_TARIS_APARTMENT");
	object object5 = sub3(nGlobal);
	sub1("Go Hawk Start");
	if ((((!GetIsObjectValid(oK_EBON_HAWK_LOCATION)) && (!GetIsObjectValid(object5))) && (!GetIsObjectValid(oK_TARIS_APARTMENT)))) {
		sub1("Starting Return to Port Section");
		if (((int5 == 1) && IsNPCPartyMember(5))) {
			sub1("Xor 1 == 1");
			if ((GetGlobalBoolean("K_XOR_AMBUSH_FIX") == 0)) {
				sub1("Xor 2 Ambush Fix == FALSE");
				if (((((nGlobal == 20) || (nGlobal == 25)) || (nGlobal == 30)) || (nGlobal == 35))) {
					sub1("Xor 3 Ambush Choosing Planet");
					SetGlobalNumber("K_XOR_AMBUSH", 1);
					SetGlobalBoolean("K_XOR_AMBUSH_FIX", 1);
					sub1("Xor 4 Hijack");
					if ((nGlobal == 20)) {
						string1 = "kas_m22aa";
					}
					if ((nGlobal == 25)) {
						string1 = "manm26ad";
					}
					if ((nGlobal == 30)) {
						string1 = "korr_m33aa";
					}
					if ((nGlobal == 35)) {
						string1 = "tat_m17ab";
					}
					StartNewModule(string1, "K_XOR_AMBUSH_SPAWN", "", "", "", "", "", "");
					return;
				}
			}
		}
		if ((((((((nGlobal == 10) || (nGlobal == 15)) || (nGlobal == 20)) || (nGlobal == 25)) || (nGlobal == 30)) || (nGlobal == 35)) || (nGlobal == 45))) {
			sub1("Returning to Port");
			sub4();
			sub5();
			sub6(32, "g_lastlocal", GetLocation(GetFirstPC()));
			SetGlobalString("K_LAST_MODULE", GetModuleFileName());
			sub1(("Planet = " + IntToString(nGlobal)));
			if ((nGlobal == 10)) {
				StartNewModule("tar_m02aa", "tar02_sw02af", "", "", "", "", "", "");
			}
			else {
				if ((nGlobal == 15)) {
					StartNewModule("danm13", "K_DAN_EBON_HAWK_TRANSITION", "", "", "", "", "", "");
				}
				else {
					if ((nGlobal == 20)) {
						StartNewModule("kas_m22aa", "K_KAS_EBON_HAWK_TRANSITION", "", "", "", "", "", "");
					}
					else {
						if ((nGlobal == 25)) {
							StartNewModule("manm26ad", "K_MAN_EBON_HAWK_TRANSITION", "", "", "", "", "", "");
						}
						else {
							if ((nGlobal == 30)) {
								StartNewModule("korr_m33aa", "K_KOR_EBON_HAWK_TRANSITION", "", "", "", "", "", "");
							}
							else {
								if ((nGlobal == 35)) {
									StartNewModule("tat_m17ab", "K_TAT_EBON_HAWK_TRANSITION", "", "", "", "", "", "");
								}
								else {
									if ((nGlobal == 45)) {
										StartNewModule("unk_m41aa", "K_UNK_EBON_HAWK_TRANSITION", "", "", "", "", "", "");
									}
								}
							}
						}
					}
				}
			}
		}
	}
	else {
		if (GetIsObjectValid(object5)) {
			string string4 = GetGlobalString("K_LAST_MODULE");
			if (((string4 != "NO_MODULE") && sub7(string4))) {
				if ((string4 != "")) {
					sub1("Jump to last location");
					StartNewModule(string4, "K_LAST_LOCATION", "", "", "", "", "", "");
				}
			}
		}
	}
}


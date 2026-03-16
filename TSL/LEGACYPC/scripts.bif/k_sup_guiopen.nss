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
int sub2(string stringParam1);
object sub1(int intParam1);

int sub2(string stringParam1) {
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

object sub1(int intParam1) {
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

void main() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	object oK_EBON_HAWK_LOCATION = GetWaypointByTag("K_EBON_HAWK_LOCATION");
	object oK_TARIS_APARTMENT = GetWaypointByTag("K_TARIS_APARTMENT");
	object object5 = sub1(nGlobal);
	string string1 = GetGlobalString("K_LAST_MODULE");
	if ((((!GetIsObjectValid(oK_EBON_HAWK_LOCATION)) && (!GetIsObjectValid(object5))) && (!GetIsObjectValid(oK_TARIS_APARTMENT)))) {
		if ((nGlobal == 10)) {
			SetReturnStrref(1, 32228, 42465);
		}
		else {
			if (((nGlobal != 5) && (nGlobal != 0))) {
				SetReturnStrref(1, 38477, 42466);
			}
			else {
				PrintString("JUMP VALIDATION ************************ 1st Transit Disabled Activated");
				SetReturnStrref(0, 38550, 0);
			}
		}
	}
	else {
		if (((GetIsObjectValid(oK_EBON_HAWK_LOCATION) || GetIsObjectValid(object5)) && (sub2(string1) == 0))) {
			PrintString("JUMP VALIDATION ************************ 2nd Transit Disabled Activated");
			SetReturnStrref(0, 38550, 0);
		}
		else {
			SetReturnStrref(1, 32227, 42467);
		}
	}
}


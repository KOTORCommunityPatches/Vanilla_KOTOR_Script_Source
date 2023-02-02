// Byte code does not match

// Prototypes
string sub2(int intParam1);
object sub1(int intParam1, string stringParam2);

string sub2(int intParam1) {
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

object sub1(int intParam1, string stringParam2) {
	string string1;
	if ((stringParam2 == "WP_gspawn_")) {
		string string2 = sub2(intParam1);
		if ((string2 == "ERROR")) {
			return OBJECT_INVALID;
		}
		string1 = (stringParam2 + string2);
	}
	else {
		string1 = stringParam2;
	}
	object object1 = GetObjectByTag(string1, 0);
	object object3;
	if (GetIsObjectValid(object1)) {
		object3 = SpawnAvailableNPC(intParam1, GetLocation(object1));
		if (GetIsObjectValid(object3)) {
			SetCreatureAILevel(object3, 3);
			return object3;
		}
	}
	return OBJECT_INVALID;
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionForceMoveToObject(GetObjectByTag("WP_ATTON_CANTINA1a", 0), 0, 1.0, 30.0));
			AssignCommand(GetObjectByTag("twindoor", 0), ActionOpenDoor(GetObjectByTag("twindoor", 0)));
			break;
		case 1:
			AssignCommand(GetFirstPC(), ClearAllActions());
			AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("WP_ATTON_CANTINA2a", 0), 1));
			vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("bartender", 0)));
			AssignCommand(GetFirstPC(), ActionDoCommand(SetFacingPoint(struct2)));
			DelayCommand(1.0, SetLockOrientationInDialog(GetFirstPC(), 1));
			break;
		case 2:
			{
				object object12 = sub1(0, "WP_ATTON_BH_1");
				AssignCommand(object12, ClearAllActions());
				AssignCommand(object12, ActionForceMoveToObject(GetObjectByTag("WP_ATTON_BH_2", 0), 1, 1.0, 30.0));
				AssignCommand(object12, SetFacingPoint(GetPosition(GetFirstPC())));
			}
			break;
		case 3:
			{
				object oAtton = GetObjectByTag("atton", 0);
				AssignCommand(oAtton, ClearAllActions());
				AssignCommand(oAtton, ActionForceMoveToObject(GetObjectByTag("WP_ATTON_BH_1", 0), 1, 1.0, 30.0));
			}
			break;
		case 4:
			{
				object object19 = GetObjectByTag("atton", 0);
				DestroyObject(object19, 0.0, 0, 0.0, 0);
				StartNewModule("303NAR", "From_301NAR", "", "", "", "", "", "");
			}
			break;
		case 5:
			{
				object oTwinSun1 = GetObjectByTag("TwinSun1", 0);
				object oTwinSun2 = GetObjectByTag("TwinSun2", 0);
				vector struct5 = GetPositionFromLocation(GetLocation(oTwinSun1));
				AssignCommand(GetFirstPC(), ActionDoCommand(SetFacingPoint(struct5)));
				struct5 = GetPositionFromLocation(GetLocation(oTwinSun2));
				DelayCommand(1.5, AssignCommand(GetFirstPC(), ActionDoCommand(SetFacingPoint(struct5))));
			}
			break;
		case 6:
			{
				object object27 = GetObjectByTag("TwinSun1", 0);
				object object29 = GetObjectByTag("TwinSun2", 0);
				object oWP_TWIN1_CANTINA_2 = GetObjectByTag("WP_TWIN1_CANTINA_2", 0);
				object oWP_TWIN2_CANTINA_2 = GetObjectByTag("WP_TWIN2_CANTINA_2", 0);
				AssignCommand(object27, ClearAllActions());
				AssignCommand(object29, ClearAllActions());
				effect effect1 = EffectMovementSpeedDecrease(33);
				ApplyEffectToObject(1, effect1, object27, 5.0);
				ApplyEffectToObject(1, effect1, object29, 5.0);
				AssignCommand(object27, ActionForceMoveToObject(oWP_TWIN1_CANTINA_2, 0, 1.0, 30.0));
				AssignCommand(object29, ActionForceMoveToObject(oWP_TWIN2_CANTINA_2, 0, 1.0, 30.0));
			}
			break;
		case 7:
			{
				object oN_twilekf004 = GetObjectByTag("TwinSun1", 0);
				object oN_twilekf005 = GetObjectByTag("TwinSun2", 0);
				if ((GetIsObjectValid(oN_twilekf004) && GetIsObjectValid(oN_twilekf005))) {
					AssignCommand(oN_twilekf004, ClearAllActions());
					AssignCommand(oN_twilekf005, ClearAllActions());
					AssignCommand(oN_twilekf004, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_TWIN1_CANTINA", 0))));
					AssignCommand(oN_twilekf005, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_TWIN2_CANTINA", 0))));
				}
				else {
				oN_twilekf004 = CreateObject(1, "n_twilekf004", GetLocation(GetObjectByTag("WP_TWIN1_CANTINA", 0)), 0);
				oN_twilekf005 = CreateObject(1, "n_twilekf005", GetLocation(GetObjectByTag("WP_TWIN2_CANTINA", 0)), 0);
					AssignCommand(oN_twilekf004, ClearAllActions());
					AssignCommand(oN_twilekf005, ClearAllActions());
					AssignCommand(oN_twilekf004, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_TWIN1_CANTINA", 0))));
					AssignCommand(oN_twilekf005, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_TWIN2_CANTINA", 0))));
				}
			}
			break;
		case 8:
			break;
		case 9:
			break;
		case 10:
			break;
	}
}

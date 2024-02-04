// Prototypes
void sub4();
void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4);
string sub2(int intParam1);
object sub1(int intParam1, string stringParam2);

void sub4() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	object object1 = GetObjectByTag(stringParam1, intParam2);
	SetForceAlwaysUpdate(object1, 1);
	AssignCommand(object1, ClearAllActions());
	DelayCommand(floatParam4, AssignCommand(object1, ActionPlayAnimation(intParam3, 1.0, 200.0)));
}

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
	if ((nParam1 == 1)) {
		if ((!IsNPCPartyMember(9))) {
			sub1(9, "wp_visas_sp");
		}
	}
	else {
		if ((nParam1 == 2)) {
			AssignCommand(GetObjectByTag("VisasMarr", 0), ActionMoveToObject(GetFirstPC(), 0, 1.0));
		}
		else {
			if ((nParam1 == 3)) {
				object oCede;
				if ((GetGlobalNumber("101PER_Revan_End") == 0)) {
					CreateObject(1, "222_carth", GetLocation(GetObjectByTag("wp_carth_sp", 0)), 0);
					oCede = GetObjectByTag("Carth", 0);
				}
				else {
					if ((GetGlobalNumber("101PER_Revan_End") == 1)) {
						CreateObject(1, "rep_gen", GetLocation(GetObjectByTag("wp_carth_sp", 0)), 0);
						oCede = GetObjectByTag("Cede", 0);
					}
				}
				object oCarthForward = GetObjectByTag("CarthForward", 0);
				object oNavigator = GetObjectByTag("Navigator", 0);
				if (GetIsObjectValid(oNavigator)) {
					SetForceAlwaysUpdate(oNavigator, 1);
					AssignCommand(oNavigator, ClearAllActions());
					SetLockHeadFollowInDialog(oNavigator, 1);
					SetLockOrientationInDialog(oNavigator, 1);
				}
				else {
					AurPostString("Navigator not valid", 5, 19, 10.0);
				}
				object oWeaponsOfficer = GetObjectByTag("WeaponsOfficer", 0);
				if (GetIsObjectValid(oWeaponsOfficer)) {
					SetForceAlwaysUpdate(oWeaponsOfficer, 1);
					AssignCommand(oWeaponsOfficer, ClearAllActions());
					SetLockHeadFollowInDialog(oWeaponsOfficer, 1);
					SetLockOrientationInDialog(oWeaponsOfficer, 1);
				}
				else {
					AurPostString("Weapon Officer not valid", 5, 20, 10.0);
				}
				sub3("Officer", 0, 40, 0.7);
				sub3("Officer", 1, 40, 0.2);
				sub3("Officer", 2, 40, 0.4);
				sub3("Officer", 3, 40, 0.5);
				sub3("Officer", 4, 40, 0.1);
				SetForceAlwaysUpdate(oCede, 1);
				SetForceAlwaysUpdate(oCarthForward, 1);
				if (GetIsObjectValid(oCede)) {
					SetNPCSelectability(9, 1);
					sub4();
					DelayCommand(1.0, AssignCommand(oCede, ClearAllActions()));
					DelayCommand(1.0, AssignCommand(oCede, ActionStartConversation(GetFirstPC(), "carth", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
				}
				else {
					AurPostString("ERROR: General not found!", 5, 15, 20.0);
				}
			}
			else {
				if ((nParam1 == 4)) {
					AurPostString("ERROR: Should not be here, tell Mike Chu!", 5, 15, 20.0);
				}
			}
		}
	}
}
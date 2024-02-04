// Prototypes
object sub2(string stringParam1, int intParam2);
void sub1(int intParam1);

object sub2(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void sub1(int intParam1) {
	object object1;
	object oMn_turretower = GetObjectByTag("mn_turretower", 0);
	if (GetLocalBoolean(GetObjectByTag("tr_bost_2", 0), 40)) {
		return;
	}
	switch (intParam1) {
		case 1:
			object1 = sub2("sith_soldier", 1);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			object1 = sub2("sith_soldier", 2);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			object1 = sub2("sith_soldier_eli", 1);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			break;
		case 2:
			object1 = sub2("sith_soldier", 3);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			object1 = sub2("sith_soldier_eli", 1);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			object1 = sub2("c_boma1", 0);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			break;
		case 3:
			object1 = sub2("sith_soldier", 1);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			object1 = sub2("sith_soldier", 2);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			object1 = sub2("sith_soldier", 3);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			break;
		case 4:
			object1 = sub2("sith_soldier", 1);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			object1 = sub2("sith_soldier", 2);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			object1 = sub2("sith_soldier_eli", 1);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			object1 = sub2("c_boma1", 0);
			AssignCommand(object1, ActionMoveToObject(oMn_turretower, 1, 1.0));
			break;
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oWp_vaklu_cut;
	object oVaklu;
	object oFfield_upper;
	switch (nParam1) {
		case 0:
			oFfield_upper = GetObjectByTag("ffield_lower", 0);
			SetLocked(oFfield_upper, 0);
			DelayCommand(0.5, AssignCommand(oFfield_upper, ActionOpenDoor(oFfield_upper)));
			if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
				oFfield_upper = GetObjectByTag("ffield_upper", 0);
				SetLocked(oFfield_upper, 0);
				DelayCommand(0.5, AssignCommand(oFfield_upper, ActionOpenDoor(oFfield_upper)));
			}
			break;
		case 1:
			if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
			}
			else {
				DelayCommand(3.0, sub1(1));
				DelayCommand(12.0, sub1(2));
				DelayCommand(30.0, sub1(3));
				DelayCommand(50.0, sub1(4));
			}
			break;
		case 2:
			oWp_vaklu_cut = GetObjectByTag("wp_vaklu_cut", 0);
			oVaklu = GetObjectByTag("vaklu", 0);
			AssignCommand(oVaklu, ActionMoveToObject(oWp_vaklu_cut, 0, 1.0));
			break;
	}
}
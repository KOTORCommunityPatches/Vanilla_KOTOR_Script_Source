// Prototypes
void sub4(object objectParam1);
void sub3(int intParam1);
object sub2(string stringParam1, int intParam2);
void sub1(int intParam1);

void sub4(object objectParam1) {
	object oSW_EXIT = GetWaypointByTag("SW_EXIT");
	AssignCommand(objectParam1, ClearAllActions());
	DelayCommand(0.2, AssignCommand(objectParam1, ActionMoveToObject(oSW_EXIT, 1, 1.0)));
	DelayCommand(8.0, DestroyObject(objectParam1, 0.0, 0, 0.0, 0));
}

void sub3(int intParam1) {
	object object1;
	object oFrom_502OND = GetObjectByTag("From_502OND", 0);
	object1 = sub2("ds_mil_droid", 1);
	AssignCommand(object1, ActionMoveToObject(oFrom_502OND, 1, 1.0));
	object1 = sub2("ds_mil_droid", 3);
	AssignCommand(object1, ActionMoveToObject(oFrom_502OND, 1, 1.0));
}

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
	if (GetLocalBoolean(GetObjectByTag("tr_trooper1", 0), 40)) {
		return;
	}
	{
		object object2;
		object oFrom_502OND = GetObjectByTag("From_502OND", 0);
		object2 = sub2("ds_ro_sold", 1);
		AssignCommand(object2, ActionMoveToObject(oFrom_502OND, 1, 1.0));
		object2 = sub2("ds_ro_sold", 2);
		AssignCommand(object2, ActionMoveToObject(oFrom_502OND, 1, 1.0));
		object2 = sub2("ds_ro_sold_gun", 2);
		AssignCommand(object2, ActionMoveToObject(oFrom_502OND, 1, 1.0));
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oDs_ro_sold_sp3;
	object object2;
	switch (nParam1) {
		case 0:
			SetLocalBoolean(OBJECT_SELF, 40, 0);
			DelayCommand(1.0, sub1(1));
			DelayCommand(15.0, sub1(2));
			DelayCommand(35.0, sub1(3));
			break;
		case 1:
			DelayCommand(4.0, sub3(1));
			DelayCommand(10.0, sub3(2));
			break;
		case 2:
			oDs_ro_sold_sp3 = GetObjectByTag("ds_ro_sold_cow", 0);
			sub4(oDs_ro_sold_sp3);
			oDs_ro_sold_sp3 = GetObjectByTag("ds_ro_sold_cow", 1);
			sub4(oDs_ro_sold_sp3);
			oDs_ro_sold_sp3 = GetObjectByTag("ds_ro_sold_cow", 2);
			sub4(oDs_ro_sold_sp3);
			oDs_ro_sold_sp3 = GetObjectByTag("ds_ro_sold_sp3", 0);
			sub4(oDs_ro_sold_sp3);
			break;
	}
}


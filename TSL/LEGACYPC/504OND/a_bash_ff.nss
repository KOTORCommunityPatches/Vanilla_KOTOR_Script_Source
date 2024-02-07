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
	if (GetLocalBoolean(GetObjectByTag("tr_trooper1", 0), 40)) {
		return;
	}
	{
		object object2;
		object oFrom_502OND = GetObjectByTag("From_502OND", 0);
		object2 = sub2("ds_mil_droid", 1);
		AssignCommand(object2, ActionMoveToObject(oFrom_502OND, 1, 1.0));
		object2 = sub2("ds_mil_droid", 2);
		AssignCommand(object2, ActionMoveToObject(oFrom_502OND, 1, 1.0));
		object2 = sub2("ds_mil_droid", 3);
		AssignCommand(object2, ActionMoveToObject(oFrom_502OND, 1, 1.0));
	}
}

void main() {
	if (GetLocalBoolean(GetObjectByTag("term_acc", 0), 50)) {
		return;
	}
	object oTr_trooper2 = GetObjectByTag("tr_trooper2", 0);
	if (GetLocalBoolean(oTr_trooper2, 40)) {
		return;
	}
	object oVaklu_lt;
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		DelayCommand(4.0, sub1(0));
		DelayCommand(16.0, sub1(0));
		oVaklu_lt = GetObjectByTag("ds_ro_sold_sp2", 0);
	}
	else {
		oVaklu_lt = GetObjectByTag("vaklu_lt", 0);
	}
	AurPostString("Starting vaklu_lt conversation", 5, 5, 5.0);
	AssignCommand(oVaklu_lt, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetLocalBoolean(oTr_trooper2, 40, 1);
}


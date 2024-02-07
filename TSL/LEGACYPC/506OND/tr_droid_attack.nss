// Prototypes
object sub1(string stringParam1, int intParam2);

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object oMil_droid_mk2;
	int int3;
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		sub1("ds_mil_droid_mk1", 1);
	}
	sub1("ds_mil_droid_mk1", 2);
	sub1("ro_sold_gren", 1);
	sub1("ro_sold_gren", 2);
	sub1("ro_sold_hvy", 1);
	sub1("ro_sold_hvy", 2);
	sub1("ro_officer", 0);
	int3 = 0;
	while ((int3 <= 2)) {
		oMil_droid_mk2 = GetObjectByTag("mil_droid_mk2_nr", int3);
		DelayCommand(0.1, ChangeToStandardFaction(oMil_droid_mk2, 1));
		DelayCommand(0.2, ExecuteScript("a_force_combat", oMil_droid_mk2, 0xFFFFFFFF));
		DelayCommand(0.3, AssignCommand(oMil_droid_mk2, ActionAttack(GetPartyMemberByIndex(0), 0)));
		(int3++);
	}
	oMil_droid_mk2 = GetObjectByTag("mil_droid_mk2", 0);
	DelayCommand(0.1, ChangeToStandardFaction(oMil_droid_mk2, 1));
	DelayCommand(0.2, ExecuteScript("a_force_combat", oMil_droid_mk2, 0xFFFFFFFF));
	DelayCommand(0.3, AssignCommand(oMil_droid_mk2, ActionAttack(GetPartyMemberByIndex(0), 0)));
}


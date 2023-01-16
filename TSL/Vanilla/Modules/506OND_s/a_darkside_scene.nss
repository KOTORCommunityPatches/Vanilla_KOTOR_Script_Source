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
	int nParam1 = GetScriptParameter(1);
	object oTobin;
	object object2;
	object object3;
	object oWp_ds_kadron2;
	object oDs_sith_elite_sp;
	switch (nParam1) {
		case 0:
			oDs_sith_elite_sp = GetObjectByTag("va_officer", 0);
			oWp_ds_kadron2 = GetObjectByTag("sw_exit2", 0);
			DelayCommand(0.1, AssignCommand(oDs_sith_elite_sp, ActionMoveToObject(oWp_ds_kadron2, 1, 1.0)));
			oTobin = GetObjectByTag("tobin", 0);
			object2 = sub1("ds_v_troop_tob", 1);
			object3 = sub1("ds_v_troop_tob", 2);
			DelayCommand(10.1, AssignCommand(oTobin, ActionMoveToObject(GetObjectByTag("wp_dsentry_tobin", 0), 1, 1.0)));
			DelayCommand(11.0, AssignCommand(object2, ActionMoveToObject(GetObjectByTag("wp_dsentry_guard1", 0), 1, 1.0)));
			DelayCommand(11.5, AssignCommand(object3, ActionMoveToObject(GetObjectByTag("wp_dsentry_guard2", 0), 1, 1.0)));
			DelayCommand(15.0, ChangeToStandardFaction(oTobin, 2));
			DelayCommand(16.0, ChangeToStandardFaction(object2, 2));
			DelayCommand(16.5, ChangeToStandardFaction(object3, 2));
			break;
		case 1:
			break;
		case 2:
			oDs_sith_elite_sp = GetObjectByTag("kadron", 0);
			oWp_ds_kadron2 = GetObjectByTag("wp_ds_kadron2", 0);
			DelayCommand(0.1, AssignCommand(oDs_sith_elite_sp, ActionJumpToObject(oWp_ds_kadron2, 1)));
			oDs_sith_elite_sp = GetObjectByTag("royal_corporal", 0);
			DelayCommand(0.1, ChangeToStandardFaction(oDs_sith_elite_sp, 1));
			break;
		case 3:
			oDs_sith_elite_sp = GetObjectByTag("g_darkjedi04", 0);
			DelayCommand(0.1, ChangeToStandardFaction(oDs_sith_elite_sp, 3));
			oDs_sith_elite_sp = GetObjectByTag("ds_sith_elite_sp", 0);
			DelayCommand(0.1, ChangeToStandardFaction(oDs_sith_elite_sp, 3));
			break;
	}
}


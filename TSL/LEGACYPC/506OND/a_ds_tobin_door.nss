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
	object oTobin = GetObjectByTag("tobin", 0);
	switch (nParam1) {
		case 0:
			{
				object oDs_v_troop_tob = GetObjectByTag("ds_v_troop_tob", 0);
				object object5 = GetObjectByTag("ds_v_troop_tob", 1);
				AssignCommand(oTobin, ActionJumpToObject(GetObjectByTag("wp_ds_tobin_door", 0), 1));
				AssignCommand(oDs_v_troop_tob, ActionJumpToObject(GetObjectByTag("wp_ds_sentry1_door", 0), 1));
				AssignCommand(object5, ActionJumpToObject(GetObjectByTag("wp_ds_sentry2_door", 0), 1));
				DelayCommand(1.0, AssignCommand(oTobin, ActionForceMoveToObject(GetObjectByTag("wp_ds_tobin_door2", 0), 0, 1.0, 30.0)));
				DelayCommand(1.0, AssignCommand(oDs_v_troop_tob, ActionForceMoveToObject(GetObjectByTag("wp_ds_sentry1_door2", 0), 0, 1.0, 30.0)));
				DelayCommand(1.0, AssignCommand(object5, ActionForceMoveToObject(GetObjectByTag("wp_ds_sentry2_door2", 0), 0, 1.0, 30.0)));
			}
			break;
		case 1:
			DelayCommand(1.0, AssignCommand(oTobin, PlayAnimation(10346, 1.0, 0.0)));
			sub1("ds_v_troop_tob", 3);
			sub1("ds_v_troop_tob", 4);
			break;
	}
}


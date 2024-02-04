void main() {
	object oExchangeDoor = GetObjectByTag("ExchangeDoor", 0);
	object oExchangeBackDoor = GetObjectByTag("ExchangeBackDoor", 0);
	effect efDeath = EffectDeath(1, 0, 1);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		AssignCommand(oExchangeDoor, ActionCloseDoor(oExchangeDoor));
		CreateObject(1, "serdummy1", GetLocation(GetObjectByTag("wp_north_1", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_north_2", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_north_3", 0)), 0);
		CreateObject(1, "serdummy1", GetLocation(GetObjectByTag("wp_north_4", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_north_5", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_north_6", 0)), 0);
	}
	if ((nParam1 == 1)) {
		ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(oExchangeDoor), 0.0);
		AssignCommand(oExchangeDoor, ActionOpenDoor(oExchangeDoor));
		ApplyEffectToObject(0, efDeath, GetNearestObjectByTag("ExchangeThug302_3", oExchangeDoor, 1), 0.0);
		ApplyEffectToObject(0, efDeath, GetNearestObjectByTag("ExchangeThug302_3", oExchangeDoor, 2), 0.0);
	}
	if ((nParam1 == 2)) {
		object oSerdummy1 = GetObjectByTag("serdummy1", 0);
		object oSerdummy2 = GetObjectByTag("serdummy2", 0);
		object object23 = GetObjectByTag("serdummy2", 1);
		object object25 = GetObjectByTag("serdummy1", 1);
		object object27 = GetObjectByTag("serdummy2", 2);
		object object29 = GetObjectByTag("serdummy2", 3);
		object oWp_north_atk = GetObjectByTag("wp_north_atk", 0);
		AssignCommand(oSerdummy1, ActionForceMoveToObject(oWp_north_atk, 1, 1.0, 2.0));
		AssignCommand(oSerdummy2, ActionForceMoveToObject(oWp_north_atk, 1, 1.0, 2.0));
		AssignCommand(object23, ActionForceMoveToObject(oWp_north_atk, 1, 1.0, 2.0));
		AssignCommand(object25, ActionForceMoveToObject(oWp_north_atk, 1, 1.0, 2.0));
		AssignCommand(object27, ActionForceMoveToObject(oWp_north_atk, 1, 1.0, 2.0));
		AssignCommand(object29, ActionForceMoveToObject(oWp_north_atk, 1, 1.0, 2.0));
	}
	if ((nParam1 == 3)) {
		AssignCommand(oExchangeDoor, ActionCloseDoor(oExchangeDoor));
		CreateObject(1, "serdummy1", GetLocation(GetObjectByTag("wp_north_1", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_north_2", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_north_3", 0)), 0);
	}
	if ((nParam1 == 4)) {
		DestroyObject(GetObjectByTag("serdummy1", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("serdummy1", 1), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("serdummy2", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("serdummy2", 1), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("serdummy2", 2), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("serdummy2", 3), 0.0, 0, 0.0, 0);
	}
	if ((nParam1 == 5)) {
		SoundObjectPlay(GetObjectByTag("Blaster", 0));
		DelayCommand(0.5, SoundObjectPlay(GetObjectByTag("Blaster2", 0)));
	}
	if ((nParam1 == 6)) {
		SoundObjectPlay(GetObjectByTag("Scream", 0));
	}
	if ((nParam1 == 7)) {
		AssignCommand(oExchangeBackDoor, ActionCloseDoor(oExchangeBackDoor));
		CreateObject(1, "serdummy1", GetLocation(GetObjectByTag("wp_south_1", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_south_2", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_south_3", 0)), 0);
		CreateObject(1, "serdummy1", GetLocation(GetObjectByTag("wp_south_4", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_south_5", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_south_6", 0)), 0);
	}
	if ((nParam1 == 8)) {
		ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(oExchangeBackDoor), 0.0);
		AssignCommand(oExchangeBackDoor, ActionOpenDoor(oExchangeBackDoor));
		ApplyEffectToObject(0, efDeath, GetNearestObjectByTag("ExchangeThug302_3", oExchangeBackDoor, 1), 0.0);
		ApplyEffectToObject(0, efDeath, GetNearestObjectByTag("ExchangeThug302_3", oExchangeBackDoor, 2), 0.0);
	}
	if ((nParam1 == 9)) {
		object object62 = GetObjectByTag("serdummy1", 0);
		object object64 = GetObjectByTag("serdummy2", 0);
		object object66 = GetObjectByTag("serdummy2", 1);
		object object68 = GetObjectByTag("serdummy1", 1);
		object object70 = GetObjectByTag("serdummy2", 2);
		object object72 = GetObjectByTag("serdummy2", 3);
		object oWp_south_atk = GetObjectByTag("wp_south_atk", 0);
		AssignCommand(object62, ActionForceMoveToObject(oWp_south_atk, 1, 1.0, 2.0));
		AssignCommand(object64, ActionForceMoveToObject(oWp_south_atk, 1, 1.0, 2.0));
		AssignCommand(object66, ActionForceMoveToObject(oWp_south_atk, 1, 1.0, 2.0));
		AssignCommand(object68, ActionForceMoveToObject(oWp_south_atk, 1, 1.0, 2.0));
		AssignCommand(object70, ActionForceMoveToObject(oWp_south_atk, 1, 1.0, 2.0));
		AssignCommand(object72, ActionForceMoveToObject(oWp_south_atk, 1, 1.0, 2.0));
	}
	if ((nParam1 == 10)) {
		AssignCommand(oExchangeBackDoor, ActionCloseDoor(oExchangeBackDoor));
		CreateObject(1, "serdummy1", GetLocation(GetObjectByTag("wp_south_1", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_south_2", 0)), 0);
		CreateObject(1, "serdummy2", GetLocation(GetObjectByTag("wp_south_3", 0)), 0);
	}
	if ((nParam1 == 11)) {
		DestroyObject(GetObjectByTag("Blaster", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Blaster2", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Scream", 0), 0.0, 0, 0.0, 0);
	}
}
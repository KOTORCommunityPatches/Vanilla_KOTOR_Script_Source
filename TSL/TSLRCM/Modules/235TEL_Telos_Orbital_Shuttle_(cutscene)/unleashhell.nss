void main() {
	object oAlarm = GetObjectByTag("Alarm", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		CreateObject(64, "plc_steamc02", GetLocation(GetWaypointByTag("SmokeSpawn1")), 1);
		CreateObject(64, "plc_flmbrstc", GetLocation(GetWaypointByTag("SmokeSpawn2")), 1);
		CreateObject(64, "plc_esparklg", GetLocation(GetWaypointByTag("SparkSpawn")), 1);
	}
	else {
		CreateObject(64, "plc_steamc02", GetLocation(GetWaypointByTag("SmokeSpawn2")), 1);
		CreateObject(64, "plc_flmbrstc", GetLocation(GetWaypointByTag("SparkSpawn")), 1);
		CreateObject(64, "plc_esparklg", GetLocation(GetWaypointByTag("SmokeSpawn1")), 1);
	}
	CreateObject(64, "plc_esparklg", GetLocation(GetWaypointByTag("SparkSpawn2")), 1);
	CreateObject(64, "plc_esparklg", GetLocation(GetWaypointByTag("SparkSpawn3")), 1);
	ApplyEffectToObject(1, EffectVisualEffect(6002, 0), oAlarm, 3.0);
	SoundObjectPlay(oAlarm);
}
void main() {
	SetGlobalNumber("105PER_Dorm_Door", 1);
	object oAlarm = GetObjectByTag("Alarm", 0);
	if (GetIsObjectValid(oAlarm)) {
		AurPostString("a_set105dr: no more alarm", 5, 5, 3.0);
		SoundObjectStop(oAlarm);
	}
}


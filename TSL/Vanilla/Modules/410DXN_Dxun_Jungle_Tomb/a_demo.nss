void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			CreateItemOnObject("g_410demolitions", GetFirstPC(), 1, 0);
			break;
		case 1:
			DestroyObject(GetItemPossessedBy(GetFirstPC(), "g_410demolitions"), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("perim_sensor", 0), 0.0, 1, 0.0, 0);
			SoundObjectStop(GetObjectByTag("Alarm", 0));
			break;
	}
}


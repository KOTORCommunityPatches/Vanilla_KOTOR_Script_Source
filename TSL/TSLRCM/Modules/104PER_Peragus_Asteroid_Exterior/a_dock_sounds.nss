void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		SoundObjectPlay(GetObjectByTag("DockingAlarm", 0));
		SoundObjectPlay(GetObjectByTag("DockingAlarm", 1));
		SoundObjectPlay(GetObjectByTag("DockingAlarm", 2));
		SoundObjectPlay(GetObjectByTag("DockingSteam", 0));
		SoundObjectPlay(GetObjectByTag("DockingSteam", 1));
		SoundObjectPlay(GetObjectByTag("DockingRumble", 0));
		SoundObjectPlay(GetObjectByTag("DockingRumble", 1));
		SoundObjectPlay(GetObjectByTag("DockingRumble", 2));
		SoundObjectPlay(GetObjectByTag("DockingRumble", 3));
	}
	else {
		SoundObjectStop(GetObjectByTag("DockingAlarm", 0));
		SoundObjectStop(GetObjectByTag("DockingAlarm", 1));
		SoundObjectStop(GetObjectByTag("DockingAlarm", 2));
		SoundObjectStop(GetObjectByTag("DockingSteam", 0));
		SoundObjectStop(GetObjectByTag("DockingSteam", 1));
		SoundObjectStop(GetObjectByTag("DockingRumble", 0));
		SoundObjectStop(GetObjectByTag("DockingRumble", 1));
		SoundObjectStop(GetObjectByTag("DockingRumble", 2));
		SoundObjectStop(GetObjectByTag("DockingRumble", 3));
	}
}
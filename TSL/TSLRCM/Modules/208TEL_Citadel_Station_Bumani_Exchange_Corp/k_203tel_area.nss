void main() {
	object oArea = GetArea(OBJECT_SELF);
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		object oHidden_turret = GetObjectByTag("hidden_turret", 0);
		object object8 = GetObjectByTag("hidden_turret", 1);
		if ((GetIsObjectValid(oHidden_turret) && GetIsObjectValid(object8))) {
			DelayCommand(0.1, AssignCommand(oHidden_turret, ActionPlayAnimation(43, 1.0, (-1.0))));
			DelayCommand(0.1, AssignCommand(object8, ActionPlayAnimation(43, 1.0, (-1.0))));
		}
		if (GetIsObjectValid(GetObjectByTag("204_b4d4", 0))) {
			MusicBackgroundStop(oArea);
			MusicBackgroundChangeDay(oArea, 16, 0);
			MusicBackgroundChangeNight(oArea, 16, 0);
			MusicBackgroundPlay(oArea);
		}
		else {
			MusicBackgroundStop(oArea);
			MusicBackgroundChangeDay(oArea, 15, 0);
			MusicBackgroundChangeNight(oArea, 15, 0);
			MusicBackgroundPlay(oArea);
		}
	}
}
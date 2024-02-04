// Prototypes
void sub1();

void sub1() {
	if ((GetCurrentAction(OBJECT_SELF) == 65534)) {
		object oWP_KREIA_JEDI_1 = GetWaypointByTag("WP_KREIA_JEDI_1");
		ActionMoveToLocation(GetLocation(oWP_KREIA_JEDI_1), 0);
	}
}

void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 0)) {
		object object3 = CreateItemOnObject("g_w_lghtsbr03", oKreia, 1, 0);
		AssignCommand(oKreia, ActionEquipItem(object3, 4, 0));
		object oKreials = GetObjectByTag("kreials", 0);
		object oKreialshit = GetObjectByTag("kreialshit", 0);
		object oPlayermhurt;
		if ((GetGender(GetFirstPC()) == 1)) {
			oPlayermhurt = GetObjectByTag("playerfhurt", 0);
		}
		else {
			oPlayermhurt = GetObjectByTag("playermhurt", 0);
		}
		SetLightsaberPowered(oKreia, 1, 1, 1);
		DelayCommand(0.5, SoundObjectPlay(oKreials));
		DelayCommand(2.0, SoundObjectPlay(oKreialshit));
		DelayCommand(2.5, SoundObjectPlay(oPlayermhurt));
		DelayCommand(2.6, SetLightsaberPowered(oKreia, 1, 0, 1));
	}
	else {
		if ((nParam1 == 1)) {
			DelayCommand(2.0, SetDialogPlaceableCamera(34));
		}
		else {
			if ((nParam1 == 2)) {
				DelayCommand(1.0, AssignCommand(oKreia, ActionPlayAnimation(10370, 1.0, (-1.0))));
			}
			else {
				if ((nParam1 == 3)) {
					DelayCommand(6.0, ApplyEffectToObject(0, EffectHeal(500), oKreia, 0.0));
					DelayCommand(6.0, AssignCommand(oKreia, sub1()));
					SetGlobalFadeOut(9.0, 3.0, 0.0, 0.0, 0.0);
				}
			}
		}
	}
}
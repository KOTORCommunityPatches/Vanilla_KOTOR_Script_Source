struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oKreiaEvil = GetObjectByTag("KreiaEvil", 0);
	object oAtton = GetObjectByTag("Atton", 0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oMira = GetObjectByTag("Mira", 0);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oDisciple = GetObjectByTag("Disciple", 0);
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
		case 13:
	}
	SetLockOrientationInDialog(oKreiaEvil, 1);
	SetLockOrientationInDialog(oAtton, 1);
	SetLockOrientationInDialog(oHandmaiden, 1);
	SetLockOrientationInDialog(oMira, 1);
	SetLockOrientationInDialog(oVisasMarr, 1);
	SetLockOrientationInDialog(oDisciple, 1);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(0.1, AssignCommand(oDisciple, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_KREIA_HANDISC_1", 0)))));
	SetGlobalFadeIn(0.5, 0.3, 0.0, 0.0, 0.0);
	DelayCommand(0.7, AssignCommand(oDisciple, ActionMoveToLocation(GetLocation(GetWaypointByTag("WP_KREIA_HANDISC_2")), 0)));
	DelayCommand(2.5, SetLightsaberPowered(oDisciple, 1, 1, 1));
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(0.1, AssignCommand(oHandmaiden, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_KREIA_HANDISC_1", 0)))));
	SetGlobalFadeIn(0.5, 0.3, 0.0, 0.0, 0.0);
	DelayCommand(0.7, AssignCommand(oHandmaiden, ActionMoveToLocation(GetLocation(GetWaypointByTag("WP_KREIA_HANDISC_2")), 0)));
	DelayCommand(2.5, SetLightsaberPowered(oHandmaiden, 1, 1, 1));
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetLockOrientationInDialog(oVisasMarr, 1);
	DelayCommand(0.1, AssignCommand(oVisasMarr, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_KREIA_VISAS_1", 0)))));
	SetGlobalFadeIn(0.5, 0.3, 0.0, 0.0, 0.0);
	DelayCommand(0.7, AssignCommand(oVisasMarr, ActionMoveToLocation(GetLocation(GetWaypointByTag("WP_KREIA_VISAS_2")), 0)));
	DelayCommand(2.5, SetLightsaberPowered(oVisasMarr, 1, 1, 1));
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(0.1, AssignCommand(oAtton, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_KREIA_ATTON_1", 0)))));
	SetGlobalFadeIn(0.5, 0.3, 0.0, 0.0, 0.0);
	DelayCommand(0.7, AssignCommand(oAtton, ActionMoveToLocation(GetLocation(GetWaypointByTag("WP_KREIA_ATTON_2")), 0)));
	DelayCommand(2.5, SetLightsaberPowered(oAtton, 1, 1, 1));
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(0.1, AssignCommand(oMira, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_KREIA_MIRA_1", 0)))));
	SetGlobalFadeIn(0.5, 0.3, 0.0, 0.0, 0.0);
	DelayCommand(0.7, AssignCommand(oMira, ActionMoveToLocation(GetLocation(GetWaypointByTag("WP_KREIA_MIRA_2")), 0)));
	DelayCommand(2.0, SetLightsaberPowered(oMira, 1, 1, 1));
	SetMinOneHP(oHandmaiden, 1);
	SetMinOneHP(oKreiaEvil, 1);
	AssignCommand(oHandmaiden, ActionAttack(oKreiaEvil, 0));
	DelayCommand(3.0, AssignCommand(oHandmaiden, ActionAttack(oKreiaEvil, 0)));
	DelayCommand(6.0, AssignCommand(oHandmaiden, ActionAttack(oKreiaEvil, 0)));
	DelayCommand(8.0, AssignCommand(oHandmaiden, ActionAttack(oKreiaEvil, 0)));
	DelayCommand(10.0, SetMinOneHP(oKreiaEvil, 0));
	DelayCommand(10.0, SetMinOneHP(oHandmaiden, 0));
	DelayCommand(10.0, AssignCommand(oKreiaEvil, ActionPlayAnimation(10063, 1.0, 3.5)));
	DelayCommand(10.1, AssignCommand(oHandmaiden, ClearAllActions()));
	DelayCommand(10.2, ApplyEffectToObject(1, EffectChoke(), oHandmaiden, 3.0));
	DelayCommand(13.3, AssignCommand(oHandmaiden, ClearAllActions()));
	DelayCommand(13.5, AssignCommand(oHandmaiden, SetIsDestroyable(0, 1, 0)));
	{
		effect efDeath = EffectDeath(0, 0, 1);
		DelayCommand(13.5, ApplyEffectToObject(2, efDeath, oHandmaiden, 0.0));
	}
	DelayCommand(0.6, AssignCommand(oKreiaEvil, ActionPlayAnimation(10063, 1.0, 3.0)));
	DelayCommand(0.7, AssignCommand(oVisasMarr, ClearAllActions()));
	DelayCommand(0.7, AssignCommand(oVisasMarr, ActionPlayAnimation(10460, 1.0, 0.0)));
	DelayCommand(3.0, SetLightsaberPowered(oVisasMarr, 1, 0, 1));
	DelayCommand(3.0, AssignCommand(oVisasMarr, ClearAllActions()));
	DelayCommand(3.0, AssignCommand(oVisasMarr, ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(0.4, AssignCommand(oKreiaEvil, ActionPlayAnimation(10063, 1.0, 1.5)));
	DelayCommand(1.2, ApplyEffectAtLocation(0, EffectVisualEffect(3001, 0), GetLocation(oKreiaEvil), 0.0));
	DelayCommand(1.2, ApplyEffectToObject(1, EffectLinkEffects(EffectForcePushTargeted(GetLocation(oMira), 0), EffectVisualEffect(1014, 0)), oMira, 0.5));
	DelayCommand(1.0, SetLightsaberPowered(oMira, 1, 0, 1));
	DelayCommand(1.6, ApplyEffectToObject(1, EffectKnockdown(), oMira, 20.0));
	DelayCommand(1.6, AssignCommand(oAtton, ActionMoveToLocation(GetLocation(GetWaypointByTag("WP_KREIA_ATTON_1")), 1)));
	AssignCommand(oAtton, ActionMoveToLocation(Location(Vector((-12.02264), 12.35164, 0.4746), 315.20154), 0));
	SetLightsaberPowered(oAtton, 1, 1, 1);
	AssignCommand(oAtton, SetFacing(GetFacing(GetObjectByTag("attsio", 0))));
	SetLockOrientationInDialog(oKreiaEvil, 0);
	DestroyObject(oMira, 0.0, 0, 0.0, 0);
	DestroyObject(oVisasMarr, 0.0, 0, 0.0, 0);
	DestroyObject(oDisciple, 0.0, 0, 0.0, 0);
	AssignCommand(oAtton, ActionJumpToLocation(Location(Vector((-14.94291), 15.67806, 0.4746), 316.69055)));
	DelayCommand(0.2, AssignCommand(oAtton, ActionMoveToLocation(Location(Vector((-45.55763), 45.21181, 0.4746), 316.69055), 1)));
	SetGlobalFadeOut(6.0, 2.0, 0.0, 0.0, 0.0);
	effect efResurrect = EffectResurrection(100);
	DelayCommand(7.5, ApplyEffectToObject(0, efResurrect, GetObjectByTag("Handmaiden", 0), 0.0));
	DelayCommand(7.8, DestroyObject(oHandmaiden, 0.0, 0, 0.0, 0));
	DelayCommand(8.0, StartNewModule("909MAL", "", "", "", "", "", "", ""));
				SetFacing(GetFacing(oMira));
;
}


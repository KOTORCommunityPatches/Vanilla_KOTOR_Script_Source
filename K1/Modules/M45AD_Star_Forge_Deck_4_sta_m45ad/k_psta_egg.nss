#include "k_inc_utility"

void main() {
	
	object oInvis = GetObjectByTag("invis_easter_egg", 0);
	object oSelf = OBJECT_SELF;
	object oPC = GetFirstPC();
	string sBlaster = "g_w_hvrptbltr002";
	object oWP = GetObjectByTag("sta_way_party2", 0);
	location lSelf = GetLocation(OBJECT_SELF);
	
	UT_ActionPauseConversation(17.6);
	
	SetGlobalBoolean("STA_MALAK_DRAIN", TRUE);
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 27);
	MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 27);
	DelayCommand(0.5, SetDialogPlaceableCamera(115));
	DelayCommand(0.6, AssignCommand(oPC, ActionCastFakeSpellAtObject(FORCE_POWER_LIGHTNING, oInvis)));
	DelayCommand(1.2, CancelCombat(oPC));
	DelayCommand(1.1, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, EffectVisualEffect(1046), GetLocation(oSelf)));
	DelayCommand(1.5, AssignCommand(oPC, PlaySound("cs_ghoulchange")));
	DelayCommand(1.5, AssignCommand(oSelf, JumpToObject(oWP)));
	DelayCommand(1.7, UT_CreateObject(OBJECT_TYPE_CREATURE, "n_twilekf001", lSelf));
	DelayCommand(2.2, SetMusicVolume(1.0));
	DelayCommand(3.0, SetDialogPlaceableCamera(116));
	DelayCommand(3.1, MusicBackgroundPlay(GetArea(OBJECT_SELF)));
	DelayCommand(3.5, AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_DANCE, 1.0, 5.5)));
	DelayCommand(3.7, AssignCommand(GetObjectByTag("n_twilekf001", 0), ActionPlayAnimation(ANIMATION_LOOPING_DANCE1, 1.0, 6.0)));
	DelayCommand(8.5, SetDialogPlaceableCamera(117));
	DelayCommand(8.3, AssignCommand(GetObjectByTag("n_twilekf001", 0), ActionPlayAnimation(ANIMATION_LOOPING_DANCE, 1.0, 9.2)));
	DelayCommand(8.4, AssignCommand(oPC, ActionPlayAnimation(ANIMATION_LOOPING_DANCE1, 1.0, 9.2)));
	DelayCommand(14.5, SetDialogPlaceableCamera(118));
	DelayCommand(16.5, SetGlobalFadeOut(0.0, 1.0));
	DelayCommand(17.5, MusicBackgroundStop(GetArea(OBJECT_SELF)));
}

#include "k_inc_utility"

void main() {
	object oK45_door_malak = GetObjectByTag("k45_door_malak", 0);
	object oK45_plc_wardroid = GetObjectByTag("k45_plc_wardroid", 0);
	object oK45_plc_assdroid = GetObjectByTag("k45_plc_assdroid", 0);
	object oK45_plc_mk2droid = GetObjectByTag("k45_plc_mk2droid", 0);
	object oK45_plc_mk4droid = GetObjectByTag("k45_plc_mk4droid", 0);
	object oK45_plc_prbdroid = GetObjectByTag("k45_plc_prbdroid", 0);
	object oK45_plc_excharge = GetObjectByTag("k45_plc_excharge", 0);
	location location1 = GetLocation(GetObjectByTag("sta_way_assdroid", 0));
	location location3 = GetLocation(GetObjectByTag("sta_way_mk2droid", 0));
	location location5 = GetLocation(GetObjectByTag("sta_way_mk4droid", 0));
	location location7 = GetLocation(GetObjectByTag("sta_way_prbdroid", 0));
	location location9 = GetLocation(GetObjectByTag("k45c_way_explosi", 0));
	location location11 = GetLocation(GetObjectByTag("sta_way_wardroid", 0));
	object oSta45_pc_facing_wp = GetObjectByTag("sta45_pc_facing_wp", 0);
	object oNearestSta_invis_beam1;
	object oNearestSta_invis_beam2;
	object oNearestSta_invis_beam3;
	object oNearestSta_invis_beam4;
	object oNearestSta_invis_beam5;
	object oNearestSta_invis_beam6;
	SetGlobalNumber("STA_ASSASSIN_DROID", 1);
	SetGlobalNumber("STA_MARK2_DROID", 1);
	SetGlobalNumber("STA_MARK4_DROID", 1);
	SetGlobalNumber("STA_PROBE_DROID", 1);
	SetGlobalNumber("STA_SPYDER_DROID", 1);
	SetGlobalNumber("STA_WAR_DROID", 1);
	effect efVisual;
	
	UT_ActionPauseConversation(16.5);
	
	DelayCommand(0.1, PlaySound("cs_sfgenstart"));
	DelayCommand(1.5, SoundObjectPlay(GetObjectByTag("sta_generator", 0)));
	SetGlobalBoolean("STA_MALAK_START", 1);
	AssignCommand(GetFirstPC(), SetFacing(GetFacing(oSta45_pc_facing_wp)));
	
	SetLocked(oK45_door_malak, TRUE);
	
	oNearestSta_invis_beam1 = GetNearestObjectByTag("sta_invis_beam1", GetObjectByTag("sta_way_wardroid", 0), 1);
	oNearestSta_invis_beam2 = GetNearestObjectByTag("sta_invis_beam2", GetObjectByTag("sta_way_wardroid", 0), 1);
	oNearestSta_invis_beam3 = GetNearestObjectByTag("sta_invis_beam3", GetObjectByTag("sta_way_wardroid", 0), 1);
	oNearestSta_invis_beam4 = GetNearestObjectByTag("sta_invis_beam4", GetObjectByTag("sta_way_wardroid", 0), 1);
	oNearestSta_invis_beam5 = GetNearestObjectByTag("sta_invis_beam5", GetObjectByTag("sta_way_wardroid", 0), 1);
	oNearestSta_invis_beam6 = GetNearestObjectByTag("sta_invis_beam6", GetObjectByTag("sta_way_wardroid", 0), 1);
	efVisual = EffectVisualEffect(3011, 0);
	DelayCommand(1.5, SetDialogPlaceableCamera(47));
	DelayCommand(1.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam2, 1.2));
	DelayCommand(1.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam3, 1.2));
	DelayCommand(1.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam4, 1.2));
	DelayCommand(1.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam5, 1.2));
	DelayCommand(1.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam6, 1.2));
	DelayCommand(2.5, ApplyEffectAtLocation(2, efVisual, location11, 0.0));
	DelayCommand(2.5, UT_CreateObject(1, "sta_war", location11));
	oNearestSta_invis_beam1 = GetNearestObjectByTag("sta_invis_beam1", GetObjectByTag("k45c_way_explosi", 0), 1);
	oNearestSta_invis_beam2 = GetNearestObjectByTag("sta_invis_beam2", GetObjectByTag("k45c_way_explosi", 0), 1);
	oNearestSta_invis_beam3 = GetNearestObjectByTag("sta_invis_beam3", GetObjectByTag("k45c_way_explosi", 0), 1);
	oNearestSta_invis_beam4 = GetNearestObjectByTag("sta_invis_beam4", GetObjectByTag("k45c_way_explosi", 0), 1);
	oNearestSta_invis_beam5 = GetNearestObjectByTag("sta_invis_beam5", GetObjectByTag("k45c_way_explosi", 0), 1);
	oNearestSta_invis_beam6 = GetNearestObjectByTag("sta_invis_beam6", GetObjectByTag("k45c_way_explosi", 0), 1);
	efVisual = EffectVisualEffect(3011, 0);
	DelayCommand(4.0, SetDialogPlaceableCamera(48));
	DelayCommand(4.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam2, 1.2));
	DelayCommand(4.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam3, 1.2));
	DelayCommand(4.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam4, 1.2));
	DelayCommand(4.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam5, 1.2));
	DelayCommand(4.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam6, 1.2));
	DelayCommand(5.0, ApplyEffectAtLocation(2, efVisual, location9, 0.0));
	DelayCommand(5.0, UT_CreateObject(1, "sta_spyder", location9));
	oNearestSta_invis_beam1 = GetNearestObjectByTag("sta_invis_beam1", GetObjectByTag("sta_way_mk2droid", 0), 1);
	oNearestSta_invis_beam2 = GetNearestObjectByTag("sta_invis_beam2", GetObjectByTag("sta_way_mk2droid", 0), 1);
	oNearestSta_invis_beam3 = GetNearestObjectByTag("sta_invis_beam3", GetObjectByTag("sta_way_mk2droid", 0), 1);
	oNearestSta_invis_beam4 = GetNearestObjectByTag("sta_invis_beam4", GetObjectByTag("sta_way_mk2droid", 0), 1);
	oNearestSta_invis_beam5 = GetNearestObjectByTag("sta_invis_beam5", GetObjectByTag("sta_way_mk2droid", 0), 1);
	oNearestSta_invis_beam6 = GetNearestObjectByTag("sta_invis_beam6", GetObjectByTag("sta_way_mk2droid", 0), 1);
	efVisual = EffectVisualEffect(3011, 0);
	DelayCommand(6.5, SetDialogPlaceableCamera(49));
	DelayCommand(6.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam2, 1.2));
	DelayCommand(6.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam3, 1.2));
	DelayCommand(6.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam4, 1.2));
	DelayCommand(6.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam5, 1.2));
	DelayCommand(6.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam6, 1.2));
	DelayCommand(7.5, ApplyEffectAtLocation(2, efVisual, location3, 0.0));
	DelayCommand(7.5, UT_CreateObject(1, "sta_a2", location3));
	oNearestSta_invis_beam1 = GetNearestObjectByTag("sta_invis_beam1", GetObjectByTag("sta_way_assdroid", 0), 1);
	oNearestSta_invis_beam2 = GetNearestObjectByTag("sta_invis_beam2", GetObjectByTag("sta_way_assdroid", 0), 1);
	oNearestSta_invis_beam3 = GetNearestObjectByTag("sta_invis_beam3", GetObjectByTag("sta_way_assdroid", 0), 1);
	oNearestSta_invis_beam4 = GetNearestObjectByTag("sta_invis_beam4", GetObjectByTag("sta_way_assdroid", 0), 1);
	oNearestSta_invis_beam5 = GetNearestObjectByTag("sta_invis_beam5", GetObjectByTag("sta_way_assdroid", 0), 1);
	oNearestSta_invis_beam6 = GetNearestObjectByTag("sta_invis_beam6", GetObjectByTag("sta_way_assdroid", 0), 1);
	efVisual = EffectVisualEffect(3011, 0);
	DelayCommand(9.0, SetDialogPlaceableCamera(50));
	DelayCommand(9.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam2, 1.2));
	DelayCommand(9.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam3, 1.2));
	DelayCommand(9.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam4, 1.2));
	DelayCommand(9.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam5, 1.2));
	DelayCommand(9.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam6, 1.2));
	DelayCommand(10.0, ApplyEffectAtLocation(2, efVisual, location1, 0.0));
	DelayCommand(10.0, UT_CreateObject(1, "sta_ass2", location1));
	oNearestSta_invis_beam1 = GetNearestObjectByTag("sta_invis_beam1", GetObjectByTag("sta_way_mk4droid", 0), 1);
	oNearestSta_invis_beam2 = GetNearestObjectByTag("sta_invis_beam2", GetObjectByTag("sta_way_mk4droid", 0), 1);
	oNearestSta_invis_beam3 = GetNearestObjectByTag("sta_invis_beam3", GetObjectByTag("sta_way_mk4droid", 0), 1);
	oNearestSta_invis_beam4 = GetNearestObjectByTag("sta_invis_beam4", GetObjectByTag("sta_way_mk4droid", 0), 1);
	oNearestSta_invis_beam5 = GetNearestObjectByTag("sta_invis_beam5", GetObjectByTag("sta_way_mk4droid", 0), 1);
	oNearestSta_invis_beam6 = GetNearestObjectByTag("sta_invis_beam6", GetObjectByTag("sta_way_mk4droid", 0), 1);
	efVisual = EffectVisualEffect(3011, 0);
	DelayCommand(11.5, SetDialogPlaceableCamera(51));
	DelayCommand(11.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam2, 1.2));
	DelayCommand(11.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam3, 1.2));
	DelayCommand(11.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam4, 1.2));
	DelayCommand(11.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam5, 1.2));
	DelayCommand(11.8, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam6, 1.2));
	DelayCommand(12.5, ApplyEffectAtLocation(2, efVisual, location5, 0.0));
	DelayCommand(12.5, UT_CreateObject(1, "sta_a4", location5));
	oNearestSta_invis_beam1 = GetNearestObjectByTag("sta_invis_beam1", GetObjectByTag("sta_way_prbdroid", 0), 1);
	oNearestSta_invis_beam2 = GetNearestObjectByTag("sta_invis_beam2", GetObjectByTag("sta_way_prbdroid", 0), 1);
	oNearestSta_invis_beam3 = GetNearestObjectByTag("sta_invis_beam3", GetObjectByTag("sta_way_prbdroid", 0), 1);
	oNearestSta_invis_beam4 = GetNearestObjectByTag("sta_invis_beam4", GetObjectByTag("sta_way_prbdroid", 0), 1);
	oNearestSta_invis_beam5 = GetNearestObjectByTag("sta_invis_beam5", GetObjectByTag("sta_way_prbdroid", 0), 1);
	oNearestSta_invis_beam6 = GetNearestObjectByTag("sta_invis_beam6", GetObjectByTag("sta_way_prbdroid", 0), 1);
	efVisual = EffectVisualEffect(3011, 0);
	DelayCommand(14.0, SetDialogPlaceableCamera(14));
	DelayCommand(14.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam2, 1.2));
	DelayCommand(14.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam3, 1.2));
	DelayCommand(14.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam4, 1.2));
	DelayCommand(14.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam5, 1.2));
	DelayCommand(14.3, ApplyEffectToObject(1, EffectBeam(2037, oNearestSta_invis_beam1, 1, 0), oNearestSta_invis_beam6, 1.2));
	DelayCommand(15.0, ApplyEffectAtLocation(2, efVisual, location7, 0.0));
	DelayCommand(15.0, UT_CreateObject(1, "sta_probe", location7));
	DelayCommand(16.5, ChangeToStandardFaction(GetObjectByTag("k45_gen_assdroid", 0), 1));
	DelayCommand(16.5, ChangeToStandardFaction(GetObjectByTag("k45_gen_mk2droid", 0), 1));
	DelayCommand(16.5, ChangeToStandardFaction(GetObjectByTag("k45_gen_mk4droid", 0), 1));
	DelayCommand(16.5, ChangeToStandardFaction(GetObjectByTag("k45_gen_prbdroid", 0), 1));
	DelayCommand(16.5, ChangeToStandardFaction(GetObjectByTag("k45_gen_spydroid", 0), 1));
	DelayCommand(16.5, ChangeToStandardFaction(GetObjectByTag("k45_gen_wardroid", 0), 1));
}
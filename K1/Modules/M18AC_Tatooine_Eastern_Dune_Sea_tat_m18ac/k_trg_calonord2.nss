void SpawnBandonThugs(string sString) {
	string sThug1;
	string sThug2;
	
	sThug1 = "tat_bandon_thug1";
	sThug2 = "tat_bandon_thug2";
	CreateObject(OBJECT_TYPE_CREATURE, sThug1, GetLocation(GetObjectByTag("wp_tat_enemy1", 0)), 0);
	CreateObject(OBJECT_TYPE_CREATURE, sThug2, GetLocation(GetObjectByTag("wp_tat_enemy2", 0)), 0);
	CreateObject(OBJECT_TYPE_PLACEABLE, "tat_bandon_bike2", GetLocation(GetObjectByTag("wp_bandon_bike1", 0)), 0);
	CreateObject(OBJECT_TYPE_PLACEABLE, "tat_bandon_bike2", GetLocation(GetObjectByTag("wp_bandon_bike2", 0)), 0);
	CreateObject(OBJECT_TYPE_PLACEABLE, "tat_bandon_bike2", GetLocation(GetObjectByTag("wp_bandon_bike3", 0)), 0);
}

void main() {
	
	object oEntering = GetEnteringObject();
	string sBandon = "tat_bandon";
	int nGlobal = GetGlobalNumber("K_KALO_BANDON");
	
	if (nGlobal == 10 && GetIsPC(oEntering) && GetGlobalBoolean("TAT_CALO_TRIGGER_SET") != TRUE)
		{
			SetGlobalNumber("K_KALO_BANDON", 20);
			SetGlobalBoolean("TAT_CALO_TRIGGER_SET", TRUE);
			
			vector vThug1a = GetPosition(GetObjectByTag("ambush_rider_walrus1", 0));
			vector vThug2a = GetPosition(GetObjectByTag("ambush_rider_walrus2", 0));
			vector vThug3a = GetPosition(GetObjectByTag("ambush_rider_rodian1", 0));
			vector vThug4a = GetPosition(GetObjectByTag("ambush_rider_rodian2", 0));
			float fOri = 0.5;
			vector vThug1b = Vector(vThug1a.x, vThug1a.y, vThug1a.z + fOri);
			vector vThug2b = Vector(vThug2a.x, vThug2a.y, vThug2a.z + fOri);
			vector vThug3b = Vector(vThug3a.x, vThug3a.y, vThug3a.z + fOri);
			vector vThug4b = Vector(vThug4a.x, vThug4a.y, vThug4a.z + fOri);
			location lThug1 = Location(vThug1b, GetFacing(GetObjectByTag("ambush_rider_walrus1", 0)));
			location lThug2 = Location(vThug2b, GetFacing(GetObjectByTag("ambush_rider_walrus2", 0)));
			location lThug3 = Location(vThug3b, GetFacing(GetObjectByTag("ambush_rider_rodian1", 0)));
			location lThug4 = Location(vThug4b, GetFacing(GetObjectByTag("ambush_rider_rodian2", 0)));
			
			CreateObject(OBJECT_TYPE_PLACEABLE, "calo_leg_cover", GetLocation(GetObjectByTag("calo_leg_cover_wp", 0)), 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "ambush_speeder2", GetLocation(GetObjectByTag("bp_calo_ambush_bike2_wp", 0)), 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "ambush_speeder2", GetLocation(GetObjectByTag("bp_calo_ambush_bike3_wp", 0)), 0);
			CreateObject(OBJECT_TYPE_CREATURE, "bp_calo_ambush", GetLocation(GetObjectByTag("bp_calo_ambush_wp2", 0)), 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "tat_calo_bike", GetLocation(GetObjectByTag("bp_calo_ambush_wp", 0)), 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "sittingselkath", lThug1, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "sittingselkath", lThug3, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "sittingrodian", lThug2, 0);
			CreateObject(OBJECT_TYPE_PLACEABLE, "sittingrodian", lThug4, 0);
			
			DelayCommand(0.3, AssignCommand(GetObjectByTag("SittingSelkath", 0), ActionPlayAnimation(204, 1.0, 0.0)));
			DelayCommand(0.4, AssignCommand(GetObjectByTag("SittingSelkath", 1), ActionPlayAnimation(206, 1.0, 0.0)));
			DelayCommand(0.5, AssignCommand(GetObjectByTag("SittingRodian", 0), ActionPlayAnimation(204, 1.0, 0.0)));
			DelayCommand(0.6, AssignCommand(GetObjectByTag("SittingRodian", 1), ActionPlayAnimation(206, 1.0, 0.0)));
		}
		else
			{
				if (nGlobal == 30 && GetIsPC(oEntering) && GetGlobalBoolean("TAT_CALO_TRIGGER_SET") != TRUE)
					{
						SetGlobalBoolean("TAT_BANDON_TRIG_SET", TRUE);
						SetGlobalNumber("K_KALO_BANDON", 40);
						SpawnBandonThugs(sBandon);
						CreateObject(OBJECT_TYPE_CREATURE, sBandon, GetLocation(GetObjectByTag("wp_tat_bandon", 0)), 0);
					}
			}
}

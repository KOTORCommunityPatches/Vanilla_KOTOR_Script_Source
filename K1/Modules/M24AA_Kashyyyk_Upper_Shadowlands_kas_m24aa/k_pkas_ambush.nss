// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function and added subroutine, except original used an earlier version
// of ActionStartConversation with one less input variable.

string sCalo = "kas_calo";
string sBandon = "kas_bandon";

void SpawnMooks(string sNPC) {
	
	string sMook1;
	string sMook2;
	vector vCorpse1 = GetPosition(GetObjectByTag("kas_corpse_wp", 0));
	vector vCorpse2 = Vector(vCorpse1.x, vCorpse1.y, vCorpse1.z - 1.0);
	location lCorpse = Location(vCorpse2, GetFacing(GetObjectByTag("kas_corpse_wp", 0)));
	
	if (sNPC == sCalo)
		{
			vector vDrink1 = GetPosition(GetObjectByTag("kas_drink_wp", 0));
			vector vDrink2 = Vector(vDrink1.x, vDrink1.y, vDrink1.z + 0.35);
			location lDrink = Location(vDrink2, GetFacing(GetObjectByTag("kas_drink_wp", 0)));
			
			sMook1 = "kas_calo_thug1";
			sMook2 = "kas_calo_thug2";
			
			CreateObject(OBJECT_TYPE_CREATURE, sMook1, GetLocation(GetObjectByTag("kas_calo_thug1_wp", 0)), FALSE);
			CreateObject(OBJECT_TYPE_PLACEABLE, "kas_thug2_sit", GetLocation(GetObjectByTag("kas_calo_thug2_sit_wp", 0)), FALSE);
			CreateObject(OBJECT_TYPE_PLACEABLE, "kas_calo_fire", GetLocation(GetObjectByTag("kas_calo_fire_wp", 0)), FALSE);
			CreateObject(OBJECT_TYPE_PLACEABLE, "kas_drink2", lDrink, FALSE);
			CreateObject(OBJECT_TYPE_PLACEABLE, "kas_drink2", GetLocation(GetObjectByTag("kas_drink2_wp", 0)), FALSE);
			CreateObject(OBJECT_TYPE_CREATURE, "kas_calo_thug2", GetLocation(GetObjectByTag("kas_calo_thug2_wp2", 0)), FALSE);
			
			DelayCommand(0.2, AssignCommand(GetObjectByTag("kas_calo", 0), PlayAnimation(ANIMATION_LOOPING_TALK_NORMAL, 1.0, 7.0)));
		}
		else
			{
				sMook1 = "kas_bandon_thug1";
				sMook2 = "kas_bandon_thug2";
				
				CreateObject(OBJECT_TYPE_CREATURE, sMook1, GetLocation(GetObjectByTag("kas_calo_thug1_wp", 0)), FALSE);
				CreateObject(OBJECT_TYPE_CREATURE, sMook2, GetLocation(GetObjectByTag("kas_calo_thug2_wp", 0)), FALSE);
				CreateObject(OBJECT_TYPE_PLACEABLE, "kas_calo_fire", GetLocation(GetObjectByTag("kas_calo_fire_wp", 0)), FALSE);
				
				DelayCommand(0.1, AssignCommand(GetObjectByTag("kas_bandon_thug1", 0), PlayAnimation(ANIMATION_LOOPING_TALK_NORMAL, 1.0, 7.0)));
				DelayCommand(0.2, AssignCommand(GetObjectByTag("kas_bandon", 0), PlayAnimation(ANIMATION_LOOPING_TALK_NORMAL, 1.0, 7.0)));
				DelayCommand(0.4, AssignCommand(GetObjectByTag("kas_bandon_thug2", 0), PlayAnimation(ANIMATION_LOOPING_TALK_NORMAL, 1.0, 7.0)));
			}
}

void main() {
	
	object oNPC;
	int nGlobal = GetGlobalNumber("K_KALO_BANDON");
	
	if (GetIsPC(GetEnteringObject()))
		{
			if (nGlobal == 10)
				{
					SetGlobalNumber("K_KALO_BANDON", 20);
					
					SpawnMooks(sCalo);
					
					oNPC = CreateObject(OBJECT_TYPE_CREATURE, sCalo, GetLocation(GetObjectByTag("wp_kas_calo", 0)), FALSE);
					
					AssignCommand(GetObjectByTag("invis_calo_talker", 0), ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
					
					SoundObjectPlay(GetNearestObjectByTag("cut_campfire", OBJECT_SELF, 1));
				}
				else if (nGlobal == 30)
					{
						SetGlobalNumber("K_KALO_BANDON", 40);
						
						SpawnMooks(sBandon);
						
						oNPC = CreateObject(OBJECT_TYPE_CREATURE, sBandon, GetLocation(GetObjectByTag("wp_kas_calo", 0)), FALSE);
						
						AssignCommand(GetObjectByTag("invis_bandon_talker", 0), ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
					}
		}
}

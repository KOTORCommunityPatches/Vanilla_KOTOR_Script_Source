// GetStringByStrRef hotfix
// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_man"

string sCalo = "n_calonord001";
string sBandon = "g_bandon001";
 
 void SpawnMooks(string sBadGuy) {
 	string sMook1;
 	string sMook2;
 	
	if (sBadGuy == sCalo)
		{
			sMook1 = "calo_thug1";
			sMook2 = "calo_thug2";
			CreateObject(OBJECT_TYPE_CREATURE, sMook1, GetLocation(GetObjectByTag("wp_man28_enemy01", 0)));
			CreateObject(OBJECT_TYPE_CREATURE, sMook2, GetLocation(GetObjectByTag("wp_man28_enemy02", 0)));
		}
		else
			{
				sMook1 = "g_darkjedi003";
				sMook2 = "g_darkjedi004";
				CreateObject(OBJECT_TYPE_CREATURE, sMook1, GetLocation(GetObjectByTag("wp_man28_enemy01b", 0)));
				CreateObject(OBJECT_TYPE_CREATURE, sMook2, GetLocation(GetObjectByTag("wp_man28_enemy02b", 0)));
			}
 }

 void main() {
 	
	object oBadGuy;
 	int nGlobal = GetGlobalNumber("K_KALO_BANDON");
 	
	if (IsObjectPartyMember(GetLastOpenedBy()))
		{
			if (GetManaanMainPlotVariable() >= PLOT_HARVEST_STOPPED)
				{
					if (nGlobal == 10)
						{
							SetGlobalNumber("K_KALO_BANDON", 20);
							SpawnMooks(sCalo);
							oBadGuy = CreateObject(OBJECT_TYPE_CREATURE, sCalo, GetLocation(GetObjectByTag("wp_man28_nord", 0)));
							DelayCommand(0.2, AssignCommand(GetObjectByTag("man_calo_talker", 0), ActionStartConversation(GetFirstPC())));
						}
						else if (nGlobal == 30)
							{
								SetGlobalNumber("K_KALO_BANDON", 40);
								SpawnMooks(sBandon);
								oBadGuy = CreateObject(OBJECT_TYPE_CREATURE, sBandon, GetLocation(GetObjectByTag("wp_man28_bandon", 0)));
								DelayCommand(0.2, AssignCommand(GetObjectByTag("man_bandon_talker", 0), ActionStartConversation(GetFirstPC())));
							}
				}
		}
 }

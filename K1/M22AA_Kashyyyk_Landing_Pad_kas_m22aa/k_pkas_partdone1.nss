#include "k_inc_kas"

void main() {
	
	object oMission = GetObjectByTag("Mission", 0);
	object oCarth = GetObjectByTag("Carth", 0);
	object oBastila = GetObjectByTag("Bastila", 0);
	object oJuhani = GetObjectByTag("Juhani", 0);
	object oCand = GetObjectByTag("Cand", 0);
	object oHK47 = GetObjectByTag("HK47", 0);
	object oWP_PM = GetWaypointByTag("kas_party_wp");
	
	SetPartyTalk1Local(TRUE, OBJECT_SELF);
	
	if (GetIsObjectValid(oMission) == TRUE)
		{
			AssignCommand(oMission, ClearAllActions());
			AssignCommand(oMission, JumpToObject(oWP_PM, TRUE));
		}
		else if (GetIsObjectValid(oCarth) == TRUE)
			{
				AssignCommand(oCarth, ClearAllActions());
				AssignCommand(oCarth, JumpToObject(oWP_PM, TRUE));
			}
			else if (GetIsObjectValid(oBastila) == TRUE)
				{
					AssignCommand(oBastila, ClearAllActions());
					AssignCommand(oBastila, JumpToObject(oWP_PM, TRUE));
				}
				else if (GetIsObjectValid(oJuhani) == TRUE)
					{
						AssignCommand(oJuhani, ClearAllActions());
						AssignCommand(oJuhani, JumpToObject(oWP_PM, TRUE));
					}
					else if (GetIsObjectValid(oCand) == TRUE)
						{
							AssignCommand(oCand, ClearAllActions());
							AssignCommand(oCand, JumpToObject(oWP_PM, TRUE));
						}
						else if (GetIsObjectValid(oHK47) == TRUE)
							{
								AssignCommand(oHK47, ClearAllActions());
								AssignCommand(oHK47, JumpToObject(oWP_PM, TRUE));
							}
}

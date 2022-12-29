#include "k_inc_utility"

void main() {
	
	object oNearestPtar_lockde;
	
	if (GetGlobalNumber("Tar_Sarna") == 99 && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			
			SetMapPinEnabled(GetObjectByTag("sw_map_party", 0), TRUE);
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			SetMapPinEnabled(GetObjectByTag("tar02_mnsarnas", 0), TRUE);
			UT_SetPlotBooleanFlag(GetObjectByTag("tar02_sartlk", 0), SW_PLOT_BOOLEAN_01, TRUE);
			SetGlobalNumber("Tar_YunGend", 99);
			CreateObject(1, "tar02_sarna021", GetLocation(GetObjectByTag("tar02_sarnapty_01", 0)), 0);
			oNearestPtar_lockde = GetNearestObjectByTag("ptar_lockde", GetObjectByTag("tar02_sarnapty_01", 0), 1);
			UT_SetPlotBooleanFlag(GetNearestObjectByTag("tar02_playmusic", oNearestPtar_lockde, 1), SW_PLOT_BOOLEAN_01, TRUE);
			CreateObject(1, "tar02_yungenda21", GetLocation(GetObjectByTag("tar02_sarnapty_02", 0)), 0);
			CreateObject(64, "backpack001", GetLocation(GetObjectByTag("tar02_sarnapty_03", 0)), 0);
			CreateObject(1, "tar02_partyf", GetLocation(GetObjectByTag("tar02_sarnapty_04", 0)), 0);
			CreateObject(1, "tar02_partym", GetLocation(GetObjectByTag("tar02_sarnapty_05", 0)), 0);
			CreateObject(1, "tar02_partytlkf", GetLocation(GetObjectByTag("tar02_sarnapty_06", 0)), 0);
			CreateObject(1, "tar02_partytlkm", GetLocation(GetObjectByTag("tar02_sarnapty_07", 0)), 0);
			DestroyObject(GetObjectByTag("tar02_sithtrooper2", 0), 0.0, 0, 0.0);
			DestroyObject(GetObjectByTag("tar02_sithtrooper", 0), 0.0, 0, 0.0);
			DestroyObject(GetObjectByTag("tar02_sithcommander", 0), 0.0, 0, 0.0);
			DestroyObject(GetObjectByTag("tar02_alienprisoner", 0), 0.0, 0, 0.0);
		}
	if (GetGlobalNumber("Tar_YunGend") == 99 && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			SetMapPinEnabled(GetObjectByTag("tar02_mnyuns", 0), TRUE);
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			UT_SetPlotBooleanFlag(GetObjectByTag("tar02_yuntlk", 0), SW_PLOT_BOOLEAN_01, TRUE);
			SetGlobalNumber("Tar_Sarna", 99);
			CreateObject(1, "tar02_sarna021", GetLocation(GetObjectByTag("tar02_yunpty_01", 0)), 0);
			oNearestPtar_lockde = GetNearestObjectByTag("ptar_lockde", GetObjectByTag("tar02_yunpty_01", 0), 1);
			UT_SetPlotBooleanFlag(GetNearestObjectByTag("tar02_playmusic", oNearestPtar_lockde, 1), SW_PLOT_BOOLEAN_01, TRUE);
			CreateObject(1, "tar02_yungenda21", GetLocation(GetObjectByTag("tar02_yunpty_02", 0)), 0);
			CreateObject(64, "backpack001", GetLocation(GetObjectByTag("tar02_yunpty_03", 0)), 0);
			CreateObject(1, "tar02_partyf", GetLocation(GetObjectByTag("tar02_yunpty_04", 0)), 0);
			CreateObject(1, "tar02_partym", GetLocation(GetObjectByTag("tar02_yunpty_05", 0)), 0);
			CreateObject(1, "tar02_partytlkf", GetLocation(GetObjectByTag("tar02_yunpty_06", 0)), 0);
			CreateObject(1, "tar02_partytlkm", GetLocation(GetObjectByTag("tar02_yunpty_07", 0)), 0);
			DestroyObject(GetObjectByTag("tar02_sithtrooper2", 0), 0.0, 0, 0.0);
			DestroyObject(GetObjectByTag("tar02_sithtrooper", 0), 0.0, 0, 0.0);
			DestroyObject(GetObjectByTag("tar02_sithcommander", 0), 0.0, 0, 0.0);
			DestroyObject(GetObjectByTag("tar02_alienprisoner", 0), 0.0, 0, 0.0);
		}
}

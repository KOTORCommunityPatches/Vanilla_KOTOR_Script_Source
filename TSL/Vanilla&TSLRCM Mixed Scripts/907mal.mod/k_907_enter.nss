struct structtype1 {
	float float1;
	float float3;
};

void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	int nGlobal = GetGlobalNumber("907MAL_CUTSCENE");
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	switch (nGlobal) {
		case 0:
			CreateObject(1, "p_kreia_evil001", GetLocation(GetObjectByTag("sp_kreia", 0)), 0);
			CreateObject(1, "n_darthnihilu001", GetLocation(GetObjectByTag("sp_nihilus", 0)), 0);
			CreateObject(1, "n_darthsion", GetLocation(GetObjectByTag("sp_sion1", 0)), 0);
			AssignCommand(GetObjectByTag("Kreia", 0), ActionStartConversation(oEntering, "kreiaend", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
		case 1:
			{
				object oN_darthsion = CreateObject(1, "n_darthsion", GetLocation(GetObjectByTag("wp_kreia_start", 0)), 0);
				object oC_hologrampc = CreateObject(1, "c_hologrampc", GetLocation(GetObjectByTag("wp_hologram", 0)), 0);
				CreateObject(1, "g_sithass002", GetLocation(GetObjectByTag("sp_sith1", 0)), 0);
				CreateObject(1, "g_sithass003", GetLocation(GetObjectByTag("sp_sith2", 0)), 0);
				int int4 = GetAppearanceType(GetEnteringObject());
				effect effect1 = EffectDisguise(int4);
				ApplyEffectToObject(2, effect1, oC_hologrampc, 0.0);
				AssignCommand(oN_darthsion, ActionStartConversation(oEntering, "sioncut1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		case 2:
			{
				object oP_kreia_evil001 = CreateObject(1, "p_kreia_evil001", GetLocation(GetObjectByTag("sp_kreia2", 0)), 0);
				CreateObject(1, "n_darthsion", GetLocation(GetObjectByTag("wp_kreia_start", 0)), 0);
				AssignCommand(oP_kreia_evil001, ClearAllActions());
				AssignCommand(GetFirstPC(), ClearAllActions());
				AssignCommand(oP_kreia_evil001, ActionStartConversation(oEntering, "krecut1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		case 3:
			DestroyObject(GetObjectByTag("DarthSion", 0), 0.0, 0, 0.0, 0);
			{
				object oP_kreia_evil002 = CreateObject(1, "p_kreia_evil002", GetLocation(GetObjectByTag("wp_kreia_start", 0)), 0);
				AssignCommand(oP_kreia_evil002, ClearAllActions());
				AssignCommand(oP_kreia_evil002, ActionPlayAnimation(35, 1.0, (-1.0)));
				SpawnAvailableNPC(7, Location(Vector((-0.06657), (-74.77476), 0.796), 271.58978));
				SpawnAvailableNPC(9, Location(Vector(2.80243, (-78.52699), 0.796), 87.42225));
				SpawnAvailableNPC(4, Location(Vector((-1.72112), (-77.4207), 0.796), 17.35345));
				SpawnAvailableNPC(11, Location(Vector((-1.72112), (-77.4207), 0.796), 17.35345));
				if ((GetGlobalNumber("003EBO_Disciple_Atton") < 4)) {
					SpawnAvailableNPC(0, Location(Vector(3.27248, (-76.51482), 0.796), 198.57971));
				}
				AssignCommand(oP_kreia_evil002, ActionStartConversation(oEntering, "907krepart", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		case 4:
			DestroyObject(GetObjectByTag("DarthSion", 0), 0.0, 0, 0.0, 0);
			{
				object object38 = CreateObject(1, "p_kreia_evil002", GetLocation(GetObjectByTag("wp_kreia_start", 0)), 0);
				SpawnAvailableNPC(9, Location(Vector(2.80243, (-78.52699), 0.796), 87.42225));
				SpawnAvailableNPC(4, Location(Vector((-1.72112), (-77.4207), 0.796), 17.35345));
				SpawnAvailableNPC(11, Location(Vector((-1.72112), (-77.4207), 0.796), 17.35345));
				if ((GetGlobalNumber("003EBO_Disciple_Atton") < 4)) {
					SpawnAvailableNPC(0, Location(Vector(3.27248, (-76.51482), 0.796), 198.57971));
				}
				AssignCommand(object38, ActionStartConversation(oEntering, "907krepart", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
			break;
		case 5:
			{
				object oKreiaEvil = GetObjectByTag("KreiaEvil", 0);
				AssignCommand(oKreiaEvil, ActionStartConversation(oEntering, "907krepart", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			}
	}
}


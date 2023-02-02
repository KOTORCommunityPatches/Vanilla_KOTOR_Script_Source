void main() {
	object oBaodur = GetObjectByTag("baodur", 0);
	object oRemote = GetObjectByTag("remote", 0);
	object oAtton = GetObjectByTag("atton", 0);
	object oKreia = GetObjectByTag("kreia", 0);
	if ((GetIsObjectValid(oBaodur) && GetIsObjectValid(oRemote))) {
		AddAvailableNPCByObject(1, oBaodur);
		AddAvailablePUPByObject(0, oRemote);
		SetNPCSelectability(1, 0);
		location location1 = GetLocation(oBaodur);
		location location3 = GetLocation(oRemote);
		DestroyObject(oBaodur, 0.0, 0, 0.0, 0);
		DestroyObject(oRemote, 0.0, 0, 0.0, 0);
		object object9 = SpawnAvailableNPC(1, location1);
		AddPartyMember(1, object9);
		AssignPUP(0, 1);
		RemovePartyMember(1);
		DestroyObject(oKreia, 0.0, 0, 0.0, 0);
		DestroyObject(oAtton, 0.0, 0, 0.0, 0);
		object9 = SpawnAvailableNPC(1, location1);
		AddPartyMember(1, object9);
		SetNPCSelectability(1, 0);
		ShowPartySelectionGUI("", 1, 0xFFFFFFFF, 0);
		object o231_D_SentryCut = GetObjectByTag("231_D_SentryCut", 0);
	}
	else {
		AurPostString("231TEL: Error! BaoDur and/or Remoter INVALID!", 5, 15, 30.0);
	}
}

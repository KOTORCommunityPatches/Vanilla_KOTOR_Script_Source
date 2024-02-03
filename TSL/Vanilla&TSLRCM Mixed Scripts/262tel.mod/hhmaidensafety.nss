void main() {
	object oSister1 = GetObjectByTag("Sister1", 0);
	if ((!GetIsObjectValid(oSister1))) {
		CreateObject(1, "p_handmaiden003", GetLocation(GetObjectByTag("mn_ent", 0)), 0);
	}
	object oSister2 = GetObjectByTag("Sister2", 0);
	if ((!GetIsObjectValid(oSister2))) {
		CreateObject(1, "p_handmaiden004", GetLocation(GetObjectByTag("mn_ent", 0)), 0);
	}
	object oSister3 = GetObjectByTag("Sister3", 0);
	if ((!GetIsObjectValid(oSister3))) {
		CreateObject(1, "p_handmaiden005", GetLocation(GetObjectByTag("mn_ent", 0)), 0);
	}
	object oSister4 = GetObjectByTag("Sister4", 0);
	if ((!GetIsObjectValid(oSister4))) {
		CreateObject(1, "p_handmaiden007", GetLocation(GetObjectByTag("mn_ent", 0)), 0);
	}
	object oSister5 = GetObjectByTag("Sister5", 0);
	if ((!GetIsObjectValid(oSister5))) {
		CreateObject(1, "p_handmaiden006", GetLocation(GetObjectByTag("mn_ent", 0)), 0);
	}
}


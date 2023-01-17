void main() {
	object oN_minecoorta = CreateObject(1, "n_minecoorta", GetLocation(GetObjectByTag("WP_COORTA", 0)), 0);
	CreateObject(1, "n_minefirst001", GetLocation(GetObjectByTag("WP_THUG1", 0)), 0);
	CreateObject(1, "n_minefirst002", GetLocation(GetObjectByTag("WP_THUG2", 0)), 0);
	if (GetIsObjectValid(oN_minecoorta)) {
		AssignCommand(GetObjectByTag("CoortaFake", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("CoortaFake", 0), ActionStartConversation(GetPCSpeaker(), "CoorDead", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}


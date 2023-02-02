void main() {
	object oN_minecoorta = CreateObject(1, "n_minecoorta", GetLocation(GetObjectByTag("WP_COORTA_SPAWN", 0)), 0);
	object oN_minefirst001 = CreateObject(1, "n_minefirst001", GetLocation(GetObjectByTag("WP_THUG1_SPAWN", 0)), 0);
	object oN_minefirst002 = CreateObject(1, "n_minefirst002", GetLocation(GetObjectByTag("WP_THUG2_SPAWN", 0)), 0);
	if (GetIsObjectValid(oN_minecoorta)) {
		AssignCommand(oN_minecoorta, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

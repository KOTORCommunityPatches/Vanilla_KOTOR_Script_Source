void main() {
	string string1 = GetTag(OBJECT_SELF);
	object oKhoonda_turret3;
	if ((string1 == "turret_fake_a")) {
		oKhoonda_turret3 = GetObjectByTag("khoonda_turret2", 0);
	}
	else {
		if ((string1 == "turret_fake_b")) {
			oKhoonda_turret3 = GetObjectByTag("khoonda_turret1", 0);
		}
		else {
			if ((string1 == "turret_fake_c")) {
				oKhoonda_turret3 = GetObjectByTag("khoonda_turret3", 0);
			}
		}
	}
	ActionStartConversation(oKhoonda_turret3, "", 0, 1, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
}


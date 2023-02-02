void main() {
	if ((GetTag(OBJECT_SELF) == "mu_treasure1")) {
		CreateItemOnObject("a_robe_21", GetFirstPC(), 1, 0);
	}
	if ((GetTag(OBJECT_SELF) == "mu_treasure2")) {
		CreateItemOnObject("a_gloves_12", GetFirstPC(), 1, 0);
	}
	if ((GetTag(OBJECT_SELF) == "mu_treasure3")) {
		CreateItemOnObject("u_l_crys_18", GetFirstPC(), 1, 0);
	}
	if ((GetTag(OBJECT_SELF) == "mu_treasure4")) {
		CreateItemOnObject("u_l_colo_09", GetFirstPC(), 1, 0);
	}
	SetGlobalNumber("506OND_MuseumThief", 1);
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0, 0);
}

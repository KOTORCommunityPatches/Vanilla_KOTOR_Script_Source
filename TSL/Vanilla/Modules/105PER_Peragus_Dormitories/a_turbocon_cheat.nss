void main() {
	AurPostString("a_turbocon_cheat; 33,36,37,38 set to true", 6, 6, 10.0);
	object oDestroytu = GetObjectByTag("destroytu", 0);
	SetLocalBoolean(oDestroytu, 33, 1);
	SetLocalBoolean(oDestroytu, 36, 1);
	SetLocalBoolean(oDestroytu, 37, 1);
	SetLocalBoolean(oDestroytu, 38, 1);
}

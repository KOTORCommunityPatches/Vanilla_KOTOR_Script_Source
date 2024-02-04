void main() {
	object oKhoonda_turret_1 = GetObjectByTag("khoonda_turret_1", 0);
	object oKhoonda_turret_2 = GetObjectByTag("khoonda_turret_2", 0);
	object oKhoonda_turret_3 = GetObjectByTag("khoonda_turret_3", 0);
	DestroyObject(oKhoonda_turret_1, 0.0, 0, 0.0, 0);
	DestroyObject(oKhoonda_turret_2, 0.0, 0, 0.0, 0);
	DestroyObject(oKhoonda_turret_3, 0.0, 0, 0.0, 0);
}
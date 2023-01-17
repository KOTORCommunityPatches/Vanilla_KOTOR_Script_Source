void main() {
	object oCoortaCS2 = GetObjectByTag("CoortaCS2", 0);
	object object3 = GetObjectByTag("CoortaCS2", 1);
	DestroyObject(oCoortaCS2, 0.0, 0, 0.0, 0);
	DestroyObject(object3, 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("CoortaCS", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("MineFor", 0), 0.0, 0, 0.0, 0);
}


void main() {
	string string1;
	int nGlobal = GetGlobalNumber("003EBO_BACKGROUND");
	switch (nGlobal) {
		case 0:
			string1 = "holo_per";
			break;
		case 1:
			string1 = "holo_tel";
			break;
		case 2:
			string1 = "holo_tel";
			break;
		case 3:
			string1 = "holo_nar";
			break;
		case 4:
			string1 = "holo_dxn";
			break;
		case 5:
			string1 = "holo_dan";
			break;
		case 6:
			string1 = "holo_kor";
			break;
		case 7:
			string1 = "";
			break;
		case 8:
			string1 = "";
			break;
		case 9:
			string1 = "holo_mal";
			break;
		case 10:
			string1 = "";
			break;
		default:
			AurPostString("EBO ERROR: No background sepcified!", 5, 15, 10.0);
	}
	object oHologram = GetObjectByTag("hologram", 0);
	if (GetIsObjectValid(oHologram)) {
		DestroyObject(oHologram, 0.0, 0, 0.0, 0);
	}
	if ((string1 != "")) {
		object object3 = CreateObject(64, string1, GetLocation(GetObjectByTag("WP_hologram", 0)), 0);
		if (GetIsObjectValid(object3)) {
			DelayCommand(1.0, AssignCommand(object3, ActionPlayAnimation(204, 1.0, 0.0)));
		}
	}
}


void main() {
	string string1 = GetTag(GetEnteringObject());
	object oTr_port = GetObjectByTag("tr_port", 0);
	if ((string1 == "T3M4")) {
		SetLocalBoolean(oTr_port, 60, 0);
		AurPostString("T3M4 exit tr_port", 5, 5, 5.0);
	}
	else {
		if ((string1 == "3CFD")) {
			SetLocalBoolean(oTr_port, 61, 0);
			AurPostString("3CFD exit tr_port", 5, 5, 5.0);
		}
	}
}


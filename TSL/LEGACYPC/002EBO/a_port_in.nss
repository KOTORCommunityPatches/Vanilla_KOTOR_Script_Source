void main() {
	string string1 = GetTag(GetEnteringObject());
	object oTr_port = GetObjectByTag("tr_port", 0);
	if ((string1 == "T3M4")) {
		SetLocalBoolean(oTr_port, 60, 1);
		AurPostString("T3M4 enter tr_port", 5, 5, 5.0);
	}
	else {
		if ((string1 == "3CFD")) {
			SetLocalBoolean(oTr_port, 61, 1);
			AurPostString("3CFD enter tr_port", 5, 5, 5.0);
		}
	}
}


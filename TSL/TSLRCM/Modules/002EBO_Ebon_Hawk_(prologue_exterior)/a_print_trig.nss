void main() {
	AurPostString(("tr_port = " + IntToString(GetLocalNumber(GetObjectByTag("tr_port", 0), 20))), 5, 5, 5.0);
	AurPostString(("tr_star = " + IntToString(GetLocalNumber(GetObjectByTag("tr_star", 0), 20))), 5, 6, 5.0);
}
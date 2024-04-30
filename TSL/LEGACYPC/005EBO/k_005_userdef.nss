void main() {
	switch (GetUserDefinedEventNumber()) {
		case 1:
			AurPostString("005EBO: user-defined fired!", 5, 10, 3.0);
			ExecuteScript("a_sith_bark", GetObjectByTag("security", 0), 0xFFFFFFFF);
			return;
		default:
			AurPostString("005EBO: AWD-OEI Should not be here, error!", 5, 10, 30.0);
			return;
	}
}


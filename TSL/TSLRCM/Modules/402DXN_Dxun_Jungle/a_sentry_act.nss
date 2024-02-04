// Prototypes
object sub1(string stringParam1, int intParam2);

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			sub1("n_mandalorian001", 0);
			sub1("n_mandalorian_fr", 1);
			sub1("n_mandalorian_fr", 2);
			sub1("n_mandalorian_fr", 3);
			sub1("n_mandalorian_fr", 4);
			break;
		case 1:
			SetLocalBoolean(GetObjectByTag("mandalorian_sentry", 0), 10, 1);
			break;
		case 2:
			sub1("mand_sentry2", 0);
			sub1("n_mandalorian_fr", 10);
			sub1("n_mandalorian_fr", 11);
			sub1("n_mandalorian_fr", 12);
			AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_sentry_pc", 0), 1));
			break;
	}
}
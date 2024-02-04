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
	if ((GetJournalEntry("jedi_tomb") == 90)) {
		return;
	}
	AddJournalQuestEntry("jedi_tomb", 90, 0);
	sub1("hssiss", 1);
	sub1("hssiss", 2);
}
void main() {
	int int1 = 0;
	string string1 = "ExchangeThug3";
	object object1 = GetObjectByTag(string1, int1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 1);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
	int1 = 0;
	string1 = "ExchangeThug4";
	object1 = GetObjectByTag(string1, int1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 1);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
}
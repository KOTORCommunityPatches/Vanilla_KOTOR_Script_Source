void main() {
	string string1 = "g_assassindrd01";
	int int1 = 0;
	object object1 = GetObjectByTag(string1, int1);
	while (GetIsObjectValid(object1)) {
		ChangeToStandardFaction(object1, 21);
		(int1++);
		object1 = GetObjectByTag(string1, int1);
		{
			string string2 = "DroidOpenDoor";
			int int3 = 0;
			object object4 = GetObjectByTag(string2, int3);
			while (GetIsObjectValid(object4)) {
				ChangeToStandardFaction(object4, 21);
				(int3++);
			object4 = GetObjectByTag(string2, int3);
			}
		}
	}
}


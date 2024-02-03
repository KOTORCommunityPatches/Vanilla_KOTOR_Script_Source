void main() {
	string string1 = "WP_mine_0";
	int int1 = 4;
	int int2 = 1;
	while ((int2 <= int1)) {
		AurPostString(("a_hk50_cs: " + IntToString(int2)), int2, int2, 2.0);
		{
			string string3 = (string1 + IntToString(int2));
			object object1 = GetObjectByTag(string3, 0);
			object oG_floatingmin002 = CreateObject(1, "g_floatingmin002", GetLocation(object1), 1);
		}
		(int2++);
	}
}


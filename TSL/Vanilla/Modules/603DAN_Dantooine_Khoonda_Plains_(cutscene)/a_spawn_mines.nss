void main() {
	if ((!GetLocalBoolean(OBJECT_SELF, 21))) {
		SetLocalBoolean(OBJECT_SELF, 21, 1);
		string string1 = "wp_mine";
		int int2;
		object oInvis_friend_mine = GetObjectByTag("invis_friend_mine", 0);
		if (GetIsObjectValid(oInvis_friend_mine)) {
			int2 = 1;
			while ((int2 < 7)) {
				{
					string string2 = (string1 + IntToString(int2));
					object object3 = GetObjectByTag(string2, 0);
					SpawnMine(4, GetLocation(object3), 0, 0, oInvis_friend_mine);
				}
				(int2++);
			}
			SetGlobalNumber("601DAN_Mines_West", 6);
			int2 = 11;
			while ((int2 < 17)) {
				{
					string string4 = (string1 + IntToString(int2));
					object object5 = GetObjectByTag(string4, 0);
					SpawnMine(4, GetLocation(object5), 0, 0, oInvis_friend_mine);
				}
				(int2++);
			}
			SetGlobalNumber("601DAN_Mines_East", 6);
		}
		else {
			AurPostString("Invalid Mine Owner", 5, 17, 10.0);
		}
	}
}

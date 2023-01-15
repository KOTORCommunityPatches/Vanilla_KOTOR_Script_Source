void main() {
	int nGlobal = GetGlobalNumber("107PER_MG_EBON");
	int int3;
	string string1 = "WP_sith_";
	int3 = 1;
	while ((int3 <= nGlobal)) {
		{
			object object1 = GetObjectByTag((string1 + IntToString(int3)), 0);
			CreateObject(1, "g_sithtroop008", GetLocation(object1), 0);
			AssignCommand(OBJECT_SELF, SetFacingPoint(GetPositionFromLocation(GetLocation(GetFirstPC()))));
		}
		(int3++);
	}
}


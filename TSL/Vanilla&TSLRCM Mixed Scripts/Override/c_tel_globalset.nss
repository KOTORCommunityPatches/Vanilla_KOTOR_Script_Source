int StartingConditional() {
	string string1 = GetModuleName();
	if ((string1 == "201TEL")) {
		return GetGlobalBoolean("201TEL_INFO_TERM");
	}
	else {
		if ((string1 == "202TEL")) {
			return GetGlobalBoolean("202TEL_INFO_TERM");
		}
		else {
			if ((string1 == "203TEL")) {
				return GetGlobalBoolean("203TEL_INFO_TERM");
			}
			else {
				if ((string1 == "204TEL")) {
					return GetGlobalBoolean("204TEL_INFO_TERM");
				}
				else {
					return 0;
				}
			}
		}
	}
}


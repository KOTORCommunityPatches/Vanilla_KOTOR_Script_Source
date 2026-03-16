void main() {
	string string1 = GetModuleName();
	if ((string1 == "201TEL")) {
		SetGlobalBoolean("201TEL_INFO_TERM", 1);
	}
	else {
		if ((string1 == "202TEL")) {
			SetGlobalBoolean("202TEL_INFO_TERM", 1);
		}
		else {
			if ((string1 == "203TEL")) {
				SetGlobalBoolean("203TEL_INFO_TERM", 1);
			}
			else {
				if ((string1 == "204TEL")) {
					SetGlobalBoolean("204TEL_INFO_TERM", 1);
				}
			}
		}
	}
}


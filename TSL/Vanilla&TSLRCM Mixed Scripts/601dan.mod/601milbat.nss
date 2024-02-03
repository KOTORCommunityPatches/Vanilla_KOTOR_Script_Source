void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	string string1;
	if (nParam1 = 1) {
		string1 = "601DAN_1Squad";
	}
	else {
		if (nParam1 = 2) {
			string1 = "601DAN_2Squad";
		}
		else {
			if (nParam1 = 3) {
				string1 = "601DAN_3Squad";
			}
		}
	}
	switch (nParam2) {
		case 1:
			SetGlobalNumber(string1, 1);
			break;
		case 2:
			SetGlobalNumber(string1, 2);
			break;
		case 3:
			SetGlobalNumber(string1, 3);
			break;
	}
}


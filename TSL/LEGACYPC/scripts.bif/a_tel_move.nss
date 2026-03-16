void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			StartNewModule("201TEL", "WP_from_term", "", "", "", "", "", "");
			break;
		case 2:
			StartNewModule("202TEL", "WP_from_term", "", "", "", "", "", "");
			break;
		case 3:
			StartNewModule("203TEL", "WP_from_term", "", "", "", "", "", "");
			break;
		case 4:
			StartNewModule("204TEL", "WP_from_term", "", "", "", "", "", "");
			break;
		default:
			break;
	}
}


void main() {
	if ((GetGlobalNumber("301NAR_Goto_Swoop") == 0)) {
		SetGlobalNumber("301NAR_Goto_Swoop", 1);
		IncrementGlobalNumber("000_Goto_Crimes", 1);
	}
}


int StartingConditional() {
	object o202_gren = GetObjectByTag("202_gren", 0);
	if ((!GetLocalBoolean(o202_gren, 36))) {
		SetLocalBoolean(o202_gren, 36, 1);
		return 1;
	}
	else {
		return 0;
	}
}


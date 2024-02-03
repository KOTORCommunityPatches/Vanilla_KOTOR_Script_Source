int StartingConditional() {
	object oAtton = GetObjectByTag("Atton", 0);
	return (oAtton == GetFirstPC());
}


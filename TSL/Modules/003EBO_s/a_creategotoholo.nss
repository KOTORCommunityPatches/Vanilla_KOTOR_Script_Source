void main() {
	object oWP_T3_HOLO = GetObjectByTag("WP_T3_HOLO", 0);
	CreateObject(1, "GotoHolo", GetLocation(oWP_T3_HOLO), 0);
}


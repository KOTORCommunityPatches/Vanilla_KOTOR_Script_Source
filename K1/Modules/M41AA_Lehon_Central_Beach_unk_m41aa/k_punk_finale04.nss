void main() {
	
	DestroyObject(GetObjectByTag("mission", 0));
	DestroyObject(GetObjectByTag("zaalbar", 0));
	DestroyObject(GetObjectByTag("cand", 0));
	DestroyObject(GetObjectByTag("carth", 0));
	DestroyObject(GetObjectByTag("hk47", 0));
	DestroyObject(GetObjectByTag("t3m4", 0));
	DestroyObject(GetObjectByTag("bastila", 0));
	
	StartNewModule("ebo_m41aa");
}
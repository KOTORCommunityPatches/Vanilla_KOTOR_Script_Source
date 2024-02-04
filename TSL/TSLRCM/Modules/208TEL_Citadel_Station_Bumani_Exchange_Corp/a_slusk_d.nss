void main() {
	DestroyObject(GetObjectByTag("203_Slusk", 0), 0.0, 1, 0.0, 0);
	CreateObject(1, "n_slusk", GetLocation(GetObjectByTag("WP_SLUSK1", 0)), 0);
}
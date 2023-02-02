void main() {
	if (GetGlobalBoolean("203TEL_Chano_Destroy")) {
		DestroyObject(GetObjectByTag("203_Chano", 0), 0.0, 0, 0.0, 0);
		SetGlobalBoolean("203TEL_Chano_Destroy", 0);
	}
}

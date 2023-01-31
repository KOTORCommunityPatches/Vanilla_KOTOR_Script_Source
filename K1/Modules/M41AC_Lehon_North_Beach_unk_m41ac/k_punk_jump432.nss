void main() {
	
	DestroyObject(GetObjectByTag("unk41_rancor01", 0));
	DestroyObject(GetObjectByTag("unk41_rancor02", 0));
	DestroyObject(GetObjectByTag("unk41_rancord", 0));
	DestroyObject(GetObjectByTag("unk41_blk1", 0));
	DestroyObject(GetObjectByTag("unk41_blk2", 0));
	DestroyObject(GetObjectByTag("unk41_blk3", 0));
	DestroyObject(GetObjectByTag("unk41_blk4", 0));
	SetGlobalBoolean("UNK_SPAWN", TRUE);
	SetGlobalBoolean("UNK_TEMP5", TRUE);
	StartNewModule("unk_m43aa", "unk43_sw43aa08");
}
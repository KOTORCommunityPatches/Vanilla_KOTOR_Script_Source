void main() {
	
	object oSelf = OBJECT_SELF;
	object oGendar = GetObjectByTag("gendar041", 0);
	
	DestroyObject(oGendar, 0.0, TRUE);
	DestroyObject(GetObjectByTag("tar_cut_actor1", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("tar_cut_actor2", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("tar_cut_actor3", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("tar_cut_actor4", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("tar_cut_actor5", 0), 0.0, TRUE);
	DestroyObject(GetObjectByTag("tar_cut_actor6", 0), 0.0, TRUE);
	
	DelayCommand(1.0, DestroyObject(oSelf, 0.0, TRUE));
}
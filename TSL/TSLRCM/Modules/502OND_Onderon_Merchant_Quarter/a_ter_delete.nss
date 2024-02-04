void main() {
	DelayCommand(1.0, DestroyObject(GetObjectByTag("terlyn", 0), 0.0, 0, 0.0, 0));
	DelayCommand(1.0, DestroyObject(GetObjectByTag("ter_child1", 0), 0.0, 0, 0.0, 0));
	DelayCommand(1.0, DestroyObject(GetObjectByTag("ter_child2", 0), 0.0, 0, 0.0, 0));
}
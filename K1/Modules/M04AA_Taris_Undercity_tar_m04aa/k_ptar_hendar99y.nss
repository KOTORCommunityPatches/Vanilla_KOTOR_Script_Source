void main() {
	
	AssignCommand(GetObjectByTag("OutcastWoman043", 0), ActionForceMoveToObject(GetObjectByTag("tar04_hendartent", 0), TRUE));
	
	DestroyObject(GetObjectByTag("OutcastWoman043", 0), 5.0);
}
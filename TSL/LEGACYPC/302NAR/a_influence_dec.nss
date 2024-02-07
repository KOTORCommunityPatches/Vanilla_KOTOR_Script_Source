void main() {
	int int1 = 2;
	int int2 = 6;
	int int3 = 12;
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	int int8;
	switch (nParam2) {
		case 1:
			int8 = int1;
			break;
		case 2:
			int8 = int2;
			break;
		case 3:
			int8 = int3;
			break;
			nParam2 = int3;
	}
	ModifyInfluence(nParam1, (-int8));
}


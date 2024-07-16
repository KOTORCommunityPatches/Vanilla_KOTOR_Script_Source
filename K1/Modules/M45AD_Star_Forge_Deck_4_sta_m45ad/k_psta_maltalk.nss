void main() {
	
	object oDrain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	
	if (!GetIsInConversation(OBJECT_SELF))
		{
			ActionMoveToObject(oDrain, TRUE);
		}
}

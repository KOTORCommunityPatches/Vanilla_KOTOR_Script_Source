// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_end"

void main() {
 	
	DelayCommand(0.1, ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 	DelayCommand(20.0, SignalEvent(GetArea(OBJECT_SELF), EventUserDefined(10)));
 }

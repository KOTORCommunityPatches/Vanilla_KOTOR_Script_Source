
//:: a_compdlg
/*
    This script forces a computer to start dialogue with the first PC.
*/
#include "k_inc_debug"

void main() {
  SetKeepStealthInDialog(TRUE);
  ActionStartConversation(GetPartyMemberByIndex(0),"",FALSE,CONVERSATION_TYPE_COMPUTER,TRUE);
}

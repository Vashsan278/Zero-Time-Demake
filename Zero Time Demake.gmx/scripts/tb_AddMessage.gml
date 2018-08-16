/// tb_AddMessage( message );
/*
    Description:
        Add a message at the end of all the other message to be displayed
        in the dialogue box.
    Arguments:
        - message:  String to be parsed as the message to add.
    Returns: Nothing
    NOTE:
        After adding message to a hided dialogue, you should
        call tb_ShowDialogue() to show it, otherwise dialogue
        will stay hidden.
*/
ds_queue_enqueue( messages, tb_parseString( argument[0] ) );

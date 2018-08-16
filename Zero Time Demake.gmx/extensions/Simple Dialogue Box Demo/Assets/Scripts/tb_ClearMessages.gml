/// tb_ClearMessages()
/*
    Description:
        Clears all the messages of a dialogue.
        This will automatically make the dialogue hide itself.
    Arguments: Nothing
    Returns: Nothing
*/
ds_queue_clear( messages );
if( currentMessage != noone )
{
    ds_list_clear( currentMessage );
    currentMessage = noone;
}
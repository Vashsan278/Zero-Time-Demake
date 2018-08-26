/// tb_HideDialogue()
/*
    Description:
        Hides the Dialogue.
        You only need to call this if you need to hide the dialogue
        by something else than the show/hide input binding.
    Arguments: Nothing
    Return: Nothing
*/
visible = false;
Player.sprite_index = asset_get_index("sCharNarrator");
Player.inCutscene = false;

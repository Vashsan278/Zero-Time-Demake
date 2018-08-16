/// tb_defineFont( name, value );
/*
    Description:
        Define a font to use in the dialogues.
    Arguments:
        - name:  Name to use in the code.
                 Say you add a font with name 'f_awesome', you could
                 then use it in the messages like this:
                 Ex: "This is an [f:f_awesome]Awesome[f:default] font!"
        - value: The value of the font.
                 You could use 'f_awesome' or even 'font_add_sprite( spr_f_awesome, 32, true, 0 )'
                 Both would give the same result.
    Returns: Nothing
    NOTE:
        If font name already exists, it will overwrite the old value.
*/
fonts[? argument[0]] = argument[1];

/// tb_DefineColor( name, value );
/*
    Description:
        Define a color to use in the dialogues.
    Arguments:
        - name:  Name to use in the code.
                 Say you add a color with name 'yellow', you could
                 then use it in the messages like this:
                 Ex: "This is [c:yellow]Yellow![c:default]"
        - value: The value of the color.
                 You could use 'c_yellow' or even 'make_color_rgb( 255, 255, 0 )'
                 Both would give the same result.
    Returns: Nothing
    NOTE:
        If color name already exists, it will overwrite the old value.
*/
colors[? argument[0]] = argument[1];
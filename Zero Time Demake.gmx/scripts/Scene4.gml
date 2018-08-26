///Scene4()
ds_list_add(obj_controller.characterOrder, "sCharNarrator");
tb_AddMessage
(                
"#
The gunshot pierces everyone's ears."
);

ds_list_add(obj_controller.characterOrder, "sCharNarrator");
tb_AddMessage
(                
"#
The incinerator door from inside#
swings open."
);

ds_list_add(obj_controller.characterOrder, "sCharNarrator");                    
tb_AddMessage
(                
"Accouncer:#
Incinerator door... is open."
);

ds_list_add(obj_controller.characterOrder, "sCharNarrator");                    
tb_AddMessage
(                
"Accouncer:#
Incinerator process... terminated."
);

ds_list_add(obj_controller.characterOrder, "sCharNarrator");
tb_AddMessage
(                
"#
Phi leaves the incinerator as#
quickly as she can."
);

ds_list_add(obj_controller.characterOrder, "sCharPhi");
tb_AddMessage
(
"Phi:#
Sigma..."
);                    

ds_list_add(obj_controller.characterOrder, "sCharPhi");
tb_AddMessage
(         
"Phi:#
Sigma!"
);

ds_list_add(obj_controller.characterOrder, "sCharPhi");
tb_AddMessage
(                
"Phi:#
Hey! You all right?!#
Are you hurt?"
);     

ds_list_add(obj_controller.characterOrder, "sCharNarration");
tb_AddMessage
(                
"Sigma:#
Ow..."
);   

ds_list_add(obj_controller.characterOrder, "sCharPhi");
tb_AddMessage
(                
"Phi:#
Huh?"
);        

ds_list_add(obj_controller.characterOrder, "sCharNarration");
tb_AddMessage
(                
"Sigma:#
Damn, my ears really hurt.#
They're killing me..."
);   

ds_list_add(obj_controller.characterOrder, "sCharNarration");
tb_AddMessage
(                
"Sigma:#
That might've ruptured my eardrum..."
);   

ds_list_add(obj_controller.characterOrder, "sCharNarration");
tb_AddMessage
(                
"#
The chair's braces fall off."
);
 
//tb_ClearMessages();  
cutScene1 = false;       
tb_ShowDialogue(); 

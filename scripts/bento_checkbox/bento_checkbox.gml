/// @param sprite
/// @param variableScope
/// @param variableName

function bento_checkbox(_sprite, _variable_scope, _variable_name)
{
    //Create and extend the basic sprite element
    with(bento_sprite(_sprite, 0))
    {
        //Make sure we set this checkbox to interactive
        style.interactive = true;
        
        //Give ourselves some extra variables to use internally
        properties.checkbox = {
            variable_scope : _variable_scope,
            variable_name : _variable_name,
            state : false,
        };
        
        //Set up an internal tick function
        properties.internal_tick = function()
        {
            //Update our state based on the variable we're tracking
            with(properties.checkbox)
            {
                state = bento_variable_get(variable_scope, variable_name);
            }
            
            //Set our sprite image based on our internal values
            var _image = 0;
            if (properties.mouse.focus   ) _image  = 1;
            if (properties.mouse.state   ) _image  = 2;
            if (properties.checkbox.state) _image += 3;
            style.image = _image;
        };
        
        properties.internal_mouse_event = function(_event)
        {
            //When the sprite is clicked and released
            if (_event == "released")
            {
                with(properties.checkbox)
                {
                    //...toggle our state...
                    state = !state;
                    
                    //...and update the variable we're tracking
                    bento_variable_set(variable_scope, variable_name, state);
                }
            }
        }
        
        return self;
    }
}
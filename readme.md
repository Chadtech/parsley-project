# Parsley Project

How to get going..
```
> git clone https://github.com/Chadtech/parsley-project.git
> cd parsley-project
> npm install
> elm package install --yes
> gulp

then open up http://localhost:2979
```


This repo is organized as ..
```
gulpFile.js
server.js
package.json
elm-package.json
development/                      
  index.html
  app.js
  elm.js
  style.css
source/                   
  app.js                  -- Loads the elm file, and handles ports
  Main.elm                -- Top level Elm file
  Ports.elm               -- Definition of javascript ports
  Styles/
    Main.styl             -- Primary styl file
    *.styl                
  Main/
    View.elm              -- Top most View module
    Update.elm            -- Top most update module
    Init.elm              -- Initial model
    *.elm
  Types/
    Model.elm             -- Definition of the apps model
    Message.elm           -- Definition of the apps messages
    *.elm
  Welmcome/
    View.elm              -- View for Welcome page
  Complete/
    View.elm              -- View for Complete page
  PersonalInformation/
    View.elm              -- View for Personal Information page
    Message.elm           -- Messages just for updating this page
    Update.elm            -- Update module just for this page
    Fields.elm            -- Field components for the view module
    Proceed.elm           -- Checks to see if the user can proceed
  Medications/
    View.elm              -- View for Medications page
    Message.elm           -- Messages just for updating this page
    Update.elm            -- Update module just for this page
  FamilyHistory/
    View.elm              -- View for Family History page
    Message.elm           -- Messages just for updating this page
    Update.elm            -- Update module just for this page
  Diseases/
    View.elm              -- View for Diseases page
    Message.elm           -- Messages just for updating this page
    Update.elm            -- Update module just for this page
  Allergies/
    View.elm              -- View for Allergies page
    Message.elm           -- Messages just for updating this page
    Update.elm            -- Update module just for this page
  Contract/
    View.elm              -- View function for the Contract page
    Components/           -- View components for this page
      Basics.elm          
  Components/             -- General view components used in many places
    DropDown.elm
    DropDown/
      Basics.elm
    List.elm
    List/
      Basics.elm
    BottomButtons.elm
    Field.elm
    List.elm

```
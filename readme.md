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
  Update/                 -- Update helpers
    Add.elm               
    Remove.elm            
    Field.elm             
    Log.elm
    *.elm
  Types/
    Model.elm             -- Definition of the apps model
    Message.elm           -- Definition of the apps messages
    *.elm
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
  View/                    -- Views for each stage in the form
    Welcome.elm
    PersonalInformation.elm
    PersonalInformation/
      Fields.elm
      Proceed.elm
    FamilyHistory.elm
    Medications.elm
    Diseases.elm
    Allergies.elm
    Contract.elm
    Contract/
      Components.elm
    Complete.elm

```
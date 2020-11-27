
# FiveM Keybind handler

## Installation [EN]
- Download the latest release
- Extract the .zip file and add the `pmc-keybinds` to your resource folder
- Add to your .cfg file the `ensure pmc-keybinds`

## Usage [EN]
- Open your `fxmanifest.lua` file
- Add to `client_scripts` the keybind file `@pmc-keybinds/import.lua`
- Inside any Lua client-side file use `RegisterKey(layout:string, keyname:string, onpress:function[, onrelease:function])`

## Instalación [ES]
- Descarga la última version
- Extrae el archivo .zip y añade `pmc-keybinds` a tu carpeta `resources`
- Añade a tu archivo .cfg `ensure pmc-keybinds`

## Uso [ES]
- Abre tu archivo `fxmanifest.lua`
- Añade a `client_scripts` el archivo `@pmc-keybinds/import.lua`
- Dentro de cualquier archivo Lua client-side utiliza `RegisterKey(layout:string, keyname:string, onpress:function[, onrelease:function])`

## Example / Ejemplo
```lua
-- example 1
RegisterKey(
-- layout
'keyboard',
-- keyname
'E',
-- on press
function()
    print('key pressed 1')
end,
-- on release
function()
    print('key released')
end)

-- example 2
RegisterKey('keyboard', 'E',
function()
    print('key pressed 2')
end)
```
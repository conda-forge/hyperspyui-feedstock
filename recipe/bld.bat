set MENU_DIR=%PREFIX%\Menu
mkdir %MENU_DIR%

copy %RECIPE_DIR%\hyperspyui.ico %MENU_DIR%
if errorlevel 1 exit 1

copy %RECIPE_DIR%\menu-windows.json %MENU_DIR%\hyperspyui.json
if errorlevel 1 exit 1

%PYTHON% -m pip install . --no-deps -vv
if errorlevel 1 exit 1

// [Function] execute_ex_set_size(wid, hi)
// [Description]
//  This function sets the initial window size for programs
//  which is executed by execute_program_ex.
//  (This doesn't take effect on execute_shell_ex.)
//  Note that this setting take effect on all of subsequent calls of execute_program_ex.
//  When you want to reset the setting, use execute_ex_set_size(-1, -1).
// [Inputs]
//  argument0 : width of the window
//  argument1 : height of the window
//      If either of argument0 or argument1 is a negative value, the setting is reset
//      and the window will be shown at its default size.
// [Example]
//  // This opens a notepad at the right half of the desktop.
//  execute_ex_set_size(display_get_width()/2, 0);
//  execute_ex_set_size(display_get_width()/2, display_get_height());
//  execute_program_ex('Notepad.exe', '', true);
if (!variable_global_exists('__execute_ex_set_size__')) {
    // function execute_ex_set_size(wid, hi: Double): Double; stdcall;
    global.__execute_ex_set_size__ = external_define('ExecuteEx.dll', 'execute_ex_set_size', dll_stdcall, ty_real, 2, ty_real, ty_real);
}
external_call(global.__execute_ex_set_size__, argument0, argument1);

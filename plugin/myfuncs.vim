" Function to toggle mouse support between vim and the terminal
fun! ToggleMouseFunction()
    if !exists("s:old_mouse")
        let s:old_mouse = "a"
    endif

    if &mouse == ""
        let &mouse = s:old_mouse
        set relativenumber
        echo "VIM has control of the mouse"
    else
        let s:old_mouse = &mouse
        let &mouse=""
        set norelativenumber
        echo "Terminal has control of the mouse"
    endif
endfunction

command! ToggleMouse call ToggleMouseFunction()

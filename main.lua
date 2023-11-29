autogui = require('autogui')
autogui.write("hello!, 안녕 こんにちは")
autogui.sleep(0.1)
autogui.hotkey('ctrl', 'a') -- select all
autogui.hotkey('ctrl', 'x') -- cut
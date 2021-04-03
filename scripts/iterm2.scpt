on run argv
    set argList to {}
    repeat with arg in argv
        set end of argList to arg & space
    end repeat

    tell application "iTerm2"
        set newWindow to (create window with default profile)
        tell current session of newWindow
            write text argList as string
        end tell
    end tell
end run
# Prints an alert of the specified type.
function alert -d "Prints an alert of the specified type."
    switch $argv[1]
        case error
            set icon ✕
            set color red
        case warning
            set icon !
            set color yellow
        case info
            set icon i
            set color blue
        case success
            set icon ✔
            set color green
        case '*'
            return 1
    end

    echo -es \
        \n \
        (set_color $color) \
        " $icon " \
        (string upper $argv[1]) \
        " ->  " \
        (set_color normal) \
        $argv[2..] \
        (set_color normal)
end

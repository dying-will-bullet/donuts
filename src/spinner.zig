// --------------------------------------------------------------------------------
//                               Spinners Collection
// --------------------------------------------------------------------------------

pub const Spinner = struct {
    interval: u16,
    frames: []const []const u8,
};

pub const dots =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
};

pub const dots2 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" },
};

pub const dots3 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⠋", "⠙", "⠚", "⠞", "⠖", "⠦", "⠴", "⠲", "⠳", "⠓" },
};

pub const dots4 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⠄", "⠆", "⠇", "⠋", "⠙", "⠸", "⠰", "⠠", "⠰", "⠸", "⠙", "⠋", "⠇", "⠆" },
};

pub const dots5 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⠋", "⠙", "⠚", "⠒", "⠂", "⠂", "⠒", "⠲", "⠴", "⠦", "⠖", "⠒", "⠐", "⠐", "⠒", "⠓", "⠋" },
};

pub const dots6 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⠁", "⠉", "⠙", "⠚", "⠒", "⠂", "⠂", "⠒", "⠲", "⠴", "⠤", "⠄", "⠄", "⠤", "⠴", "⠲", "⠒", "⠂", "⠂", "⠒", "⠚", "⠙", "⠉", "⠁" },
};

pub const dots7 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⠈", "⠉", "⠋", "⠓", "⠒", "⠐", "⠐", "⠒", "⠖", "⠦", "⠤", "⠠", "⠠", "⠤", "⠦", "⠖", "⠒", "⠐", "⠐", "⠒", "⠓", "⠋", "⠉", "⠈" },
};

pub const dots8 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⠁", "⠁", "⠉", "⠙", "⠚", "⠒", "⠂", "⠂", "⠒", "⠲", "⠴", "⠤", "⠄", "⠄", "⠤", "⠠", "⠠", "⠤", "⠦", "⠖", "⠒", "⠐", "⠐", "⠒", "⠓", "⠋", "⠉", "⠈", "⠈" },
};

pub const dots9 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⢹", "⢺", "⢼", "⣸", "⣇", "⡧", "⡗", "⡏" },
};

pub const dots10 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⢄", "⢂", "⢁", "⡁", "⡈", "⡐", "⡠" },
};

pub const dots11 =
    Spinner{
    .interval = 110,
    .frames = &[_][]const u8{ "⠁", "⠂", "⠄", "⡀", "⢀", "⠠", "⠐", "⠈" },
};

pub const dots12 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⢀⠀", "⡀⠀", "⠄⠀", "⢂⠀", "⡂⠀", "⠅⠀", "⢃⠀", "⡃⠀", "⠍⠀", "⢋⠀", "⡋⠀", "⠍⠁", "⢋⠁", "⡋⠁", "⠍⠉", "⠋⠉", "⠋⠉", "⠉⠙", "⠉⠙", "⠉⠩", "⠈⢙", "⠈⡙", "⢈⠩", "⡀⢙", "⠄⡙", "⢂⠩", "⡂⢘", "⠅⡘", "⢃⠨", "⡃⢐", "⠍⡐", "⢋⠠", "⡋⢀", "⠍⡁", "⢋⠁", "⡋⠁", "⠍⠉", "⠋⠉", "⠋⠉", "⠉⠙", "⠉⠙", "⠉⠩", "⠈⢙", "⠈⡙", "⠈⠩", "⠀⢙", "⠀⡙", "⠀⠩", "⠀⢘", "⠀⡘", "⠀⠨", "⠀⢐", "⠀⡐", "⠀⠠", "⠀⢀", "⠀⡀" },
};

pub const line =
    Spinner{
    .interval = 130,
    .frames = &[_][]const u8{ "-", "\\", "|", "/" },
};

pub const line2 =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "⠂", "-", "–", "—", "–", "-" },
};

pub const pipe =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "┤", "┘", "┴", "└", "├", "┌", "┬", "┐" },
};

pub const simple_dots =
    Spinner{
    .interval = 400,
    .frames = &[_][]const u8{ ".  ", ".. ", "...", "   " },
};

pub const simple_dots_scrolling =
    Spinner{
    .interval = 200,
    .frames = &[_][]const u8{ ".  ", ".. ", "...", " ..", "  .", "   " },
};

pub const star =
    Spinner{
    .interval = 70,
    .frames = &[_][]const u8{ "✶", "✸", "✹", "✺", "✹", "✷" },
};

pub const flip =
    Spinner{
    .interval = 70,
    .frames = &[_][]const u8{ "_", "_", "_", "-", "`", "`", "'", "´", "-", "_", "_", "_" },
};

pub const hamburger =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "☱", "☲", "☴" },
};

pub const grow_vertical =
    Spinner{
    .interval = 120,
    .frames = &[_][]const u8{ "▁", "▃", "▄", "▅", "▆", "▇", "▆", "▅", "▄", "▃" },
};

pub const grow_horizontal =
    Spinner{
    .interval = 120,
    .frames = &[_][]const u8{ "▏", "▎", "▍", "▌", "▋", "▊", "▉", "▊", "▋", "▌", "▍", "▎" },
};

pub const balloon =
    Spinner{
    .interval = 140,
    .frames = &[_][]const u8{ " ", ".", "o", "O", "@", "*", " " },
};

pub const noise =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "▓", "▒", "░" },
};

pub const box_bounce =
    Spinner{
    .interval = 120,
    .frames = &[_][]const u8{ "▖", "▘", "▝", "▗" },
};

pub const box_bounce2 =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "▌", "▀", "▐", "▄" },
};

pub const triangle =
    Spinner{
    .interval = 50,
    .frames = &[_][]const u8{ "◢", "◣", "◤", "◥" },
};

pub const arc =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "◜", "◠", "◝", "◞", "◡", "◟" },
};

pub const circle =
    Spinner{
    .interval = 120,
    .frames = &[_][]const u8{ "◡", "⊙", "◠" },
};

pub const square_corners =
    Spinner{
    .interval = 180,
    .frames = &[_][]const u8{ "◰", "◳", "◲", "◱" },
};

pub const circle_quarters =
    Spinner{
    .interval = 120,
    .frames = &[_][]const u8{ "◴", "◷", "◶", "◵" },
};

pub const circle_halves =
    Spinner{
    .interval = 50,
    .frames = &[_][]const u8{ "◐", "◓", "◑", "◒" },
};

pub const toggle =
    Spinner{
    .interval = 250,
    .frames = &[_][]const u8{ "⊶", "⊷" },
};

pub const toggle2 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "▫", "▪" },
};

pub const toggle3 =
    Spinner{
    .interval = 120,
    .frames = &[_][]const u8{ "□", "■" },
};

pub const toggle4 =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "■", "□", "▪", "▫" },
};

pub const toggle5 =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "▮", "▯" },
};

pub const toggle6 =
    Spinner{
    .interval = 300,
    .frames = &[_][]const u8{ "ဝ", "၀" },
};

pub const toggle7 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⦾", "⦿" },
};

pub const toggle8 =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "◍", "◌" },
};

pub const toggle9 =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "◉", "◎" },
};

pub const toggle10 =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "㊂", "㊀", "㊁" },
};

pub const toggle11 =
    Spinner{
    .interval = 50,
    .frames = &[_][]const u8{ "⧇", "⧆" },
};

pub const toggle12 =
    Spinner{
    .interval = 120,
    .frames = &[_][]const u8{ "☗", "☖" },
};

pub const toggle13 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "=", "*", "-" },
};

pub const arrow =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "←", "↖", "↑", "↗", "→", "↘", "↓", "↙" },
};

pub const arrow2 =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "⬆️ ", "↗️ ", "➡️ ", "↘️ ", "⬇️ ", "↙️ ", "⬅️ ", "↖️ " },
};

pub const arrow3 =
    Spinner{
    .interval = 120,
    .frames = &[_][]const u8{
        "▹▹▹▹▹",
        "▸▹▹▹▹",
        "▹▸▹▹▹",
        "▹▹▸▹▹",
        "▹▹▹▸▹",
        "▹▹▹▹▸",
    },
};

pub const bouncing_bar =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{
        "[    ]",
        "[=   ]",
        "[==  ]",
        "[=== ]",
        "[ ===]",
        "[  ==]",
        "[   =]",
        "[    ]",
        "[   =]",
        "[  ==]",
        "[ ===]",
        "[====]",
        "[=== ]",
        "[==  ]",
        "[=   ]",
    },
};

pub const bouncing_ball =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{
        "( ●    )",
        "(  ●   )",
        "(   ●  )",
        "(    ● )",
        "(     ●)",
        "(    ● )",
        "(   ●  )",
        "(  ●   )",
        "( ●    )",
        "(●     )",
    },
};

pub const smiley =
    Spinner{
    .interval = 200,
    .frames = &[_][]const u8{ "😄 ", "😝 " },
};

pub const monkey =
    Spinner{
    .interval = 300,
    .frames = &[_][]const u8{ "🙈 ", "🙈 ", "🙉 ", "🙊 " },
};

pub const hearts =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "💛 ", "💙 ", "💜 ", "💚 ", "❤️ " },
};

pub const clock =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "🕛 ", "🕐 ", "🕑 ", "🕒 ", "🕓 ", "🕔 ", "🕕 ", "🕖 ", "🕗 ", "🕘 ", "🕙 ", "🕚 " },
};

pub const earth =
    Spinner{
    .interval = 180,
    .frames = &[_][]const u8{ "🌍 ", "🌎 ", "🌏 " },
};

pub const moon =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "🌑 ", "🌒 ", "🌓 ", "🌔 ", "🌕 ", "🌖 ", "🌗 ", "🌘 " },
};

pub const runner =
    Spinner{
    .interval = 140,
    .frames = &[_][]const u8{ "🚶 ", "🏃 " },
};

pub const pong =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{
        "▐⠂       ▌",
        "▐⠈       ▌",
        "▐ ⠂      ▌",
        "▐ ⠠      ▌",
        "▐  ⡀     ▌",
        "▐  ⠠     ▌",
        "▐   ⠂    ▌",
        "▐   ⠈    ▌",
        "▐    ⠂   ▌",
        "▐    ⠠   ▌",
        "▐     ⡀  ▌",
        "▐     ⠠  ▌",
        "▐      ⠂ ▌",
        "▐      ⠈ ▌",
        "▐       ⠂▌",
        "▐       ⠠▌",
        "▐       ⡀▌",
        "▐      ⠠ ▌",
        "▐      ⠂ ▌",
        "▐     ⠈  ▌",
        "▐     ⠂  ▌",
        "▐    ⠠   ▌",
        "▐    ⡀   ▌",
        "▐   ⠠    ▌",
        "▐   ⠂    ▌",
        "▐  ⠈     ▌",
        "▐  ⠂     ▌",
        "▐ ⠠      ▌",
        "▐ ⡀      ▌",
        "▐⠠       ▌",
    },
};

pub const shark =
    Spinner{
    .interval = 120,
    .frames = &[_][]const u8{
        "▐|\\____________▌",
        "▐_|\\___________▌",
        "▐__|\\__________▌",
        "▐___|\\_________▌",
        "▐____|\\________▌",
        "▐_____|\\_______▌",
        "▐______|\\______▌",
        "▐_______|\\_____▌",
        "▐________|\\____▌",
        "▐_________|\\___▌",
        "▐__________|\\__▌",
        "▐___________|\\_▌",
        "▐____________|\\▌",
        "▐____________/|▌",
        "▐___________/|_▌",
        "▐__________/|__▌",
        "▐_________/|___▌",
        "▐________/|____▌",
        "▐_______/|_____▌",
        "▐______/|______▌",
        "▐_____/|_______▌",
        "▐____/|________▌",
        "▐___/|_________▌",
        "▐__/|__________▌",
        "▐_/|___________▌",
        "▐/|____________▌",
    },
};

pub const dqpb =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "d", "q", "p", "b" },
};

pub const weather =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "☀️ ", "☀️ ", "☀️ ", "🌤 ", "⛅️ ", "🌥 ", "☁️ ", "🌧 ", "🌨 ", "🌧 ", "🌨 ", "🌧 ", "🌨 ", "⛈ ", "🌨 ", "🌧 ", "🌨 ", "☁️ ", "🌥 ", "⛅️ ", "🌤 ", "☀️ ", "☀️ " },
};

pub const christmas =
    Spinner{
    .interval = 400,
    .frames = &[_][]const u8{ "🌲", "🎄" },
};

pub const grenade =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "،   ", "′   ", " ´ ", " ‾ ", "  ⸌", "  ⸊", "  |", "  ⁎", "  ⁕", " ෴ ", "  ⁓", "   ", "   ", "   " },
};

pub const point =
    Spinner{
    .interval = 125,
    .frames = &[_][]const u8{ "∙∙∙", "●∙∙", "∙●∙", "∙∙●", "∙∙∙" },
};

pub const layer =
    Spinner{
    .interval = 150,
    .frames = &[_][]const u8{ "-", "=", "≡" },
};

pub const beta_wave =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{ "ρββββββ", "βρβββββ", "ββρββββ", "βββρβββ", "ββββρββ", "βββββρβ", "ββββββρ" },
};

pub const finger_dance =
    Spinner{
    .interval = 160,
    .frames = &[_][]const u8{
        "🤘 ",
        "🤟 ",
        "🖖 ",
        "✋ ",
        "🤚 ",
        "👆 ",
    },
};

pub const fist_bump =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{
        "🤜　　　　🤛 ",
        "🤜　　　　🤛 ",
        "🤜　　　　🤛 ",
        "　🤜　　🤛　 ",
        "　　🤜🤛　　 ",
        "　🤜✨🤛　　 ",
        "🤜　✨　🤛　 ",
    },
};

pub const soccer_header =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{
        " 🧑⚽️       🧑 ",
        "🧑  ⚽️      🧑 ",
        "🧑   ⚽️     🧑 ",
        "🧑    ⚽️    🧑 ",
        "🧑     ⚽️   🧑 ",
        "🧑      ⚽️  🧑 ",
        "🧑       ⚽️🧑  ",
        "🧑      ⚽️  🧑 ",
        "🧑     ⚽️   🧑 ",
        "🧑    ⚽️    🧑 ",
        "🧑   ⚽️     🧑 ",
        "🧑  ⚽️      🧑 ",
    },
};

pub const mindblown =
    Spinner{
    .interval = 160,
    .frames = &[_][]const u8{
        "😐 ",
        "😐 ",
        "😮 ",
        "😮 ",
        "😦 ",
        "😦 ",
        "😧 ",
        "😧 ",
        "🤯 ",
        "💥 ",
        "✨ ",
        "　 ",
        "　 ",
        "　 ",
    },
};

pub const speaker =
    Spinner{
    .interval = 160,
    .frames = &[_][]const u8{ "🔈 ", "🔉 ", "🔊 ", "🔉 " },
};

pub const orange_pulse =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "🔸 ", "🔶 ", "🟠 ", "🟠 ", "🔶 " },
};

pub const blue_pulse =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "🔹 ", "🔷 ", "🔵 ", "🔵 ", "🔷 " },
};

pub const orange_blue_pulse =
    Spinner{
    .interval = 100,
    .frames = &[_][]const u8{ "🔸 ", "🔶 ", "🟠 ", "🟠 ", "🔶 ", "🔹 ", "🔷 ", "🔵 ", "🔵 ", "🔷 " },
};

pub const aesthetic =
    Spinner{
    .interval = 80,
    .frames = &[_][]const u8{
        "▰▱▱▱▱▱▱",
        "▰▰▱▱▱▱▱",
        "▰▰▰▱▱▱▱",
        "▰▰▰▰▱▱▱",
        "▰▰▰▰▰▱▱",
        "▰▰▰▰▰▰▱",
        "▰▰▰▰▰▰▰",
        "▰▱▱▱▱▱▱",
    },
};

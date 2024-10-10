return {
  "goolord/alpha-nvim",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = "VimEnter",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.opts.hl = "Include"

    -- setting header
    local header = {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠜⠋⠀⠉⢶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠔⠐⠢⡀⠀⠀⠀⢰⠏⠀⡴⠊⢙⣮⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠖⣳⡀⢿⣾⠴⠗⡟⠀⡜⠀⠀⣾⣿⢻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣟⡆⣿⣧⢈⠿⠀⠀⠃⠀⠇⠀⠸⣿⣿⠘⢙⣷⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⢴⡿⠯⠛⣷⠽⡿⣛⠂⠀⠀⠀⠀⠉⠒⠒⠋⠉⠴⠋⣀⠀⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⣤⠞⠉⢦⡞⢤⠀⢳⠴⠋⢩⢋⣁⡈⢇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠻⡄⠛⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⡏⠀⠀⠀⠁⠘⠋⠀⠀⠀⠑⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠁⢰⠁⠀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣾⡋⢸⢱⡾⠃⠀⠀⣼⠃⠀⠀⠀⠀⠀⠀⣀⢀⣀⣀⡀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⢕⠤⠀⢤⠔⢶⠤⡤⡤⢤⣤⠤⢤⡤⠤⡶⣞⢩⠛⣄⣎⡠⠵⠓⠉⠀⠀⢀⣼⠋⠀⠀⠀⠀⠠⠞⠉⠀⠀⢀⣉⠳⡄⠀⠀",
      "⠀⠀⠀⠀⠀⠀⢸⡪⠛⠉⠽⠾⠤⠓⠓⠚⠚⠒⠓⠓⠚⠚⠒⠛⠋⠉⠁⠀⠀⠀⠀⣀⣠⡖⠉⠀⠀⠀⠀⠀⡰⠁⠀⠀⢀⠔⣥⠶⢟⣾⡀⠀",
      "⠀⠀⠀⠀⠀⠀⠿⡇⢀⣀⢤⡴⡤⣄⣢⣀⣀⠤⠤⣤⢀⡀⠀⠀⠠⠤⢶⠒⠒⠛⢻⡤⠤⢄⡀⠀⠀⠀⠀⢀⠁⠀⠀⠀⡜⣼⠁⠀⠀⢹⣗⠀",
      "⠀⠀⠀⠀⠀⣄⠤⡀⡀⡀⢸⠋⣯⣴⣶⣷⡖⢲⠉⢺⡣⢄⣀⣀⣀⠤⠐⢣⠀⠀⠏⠀⠀⠀⣳⠀⠀⠀⠀⠸⠀⠀⠀⠀⢳⠁⠀⠀⠀⠙⠽⠀",
      "⠀⠀⠀⠀⠀⣿⠀⠀⡏⠙⠛⠒⠛⠛⢶⣿⣀⣀⣆⡞⢹⡀⠀⠀⠀⠀⣀⡠⠇⠀⡄⠀⠀⠀⣸⠀⠀⠀⢠⠃⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⣿⠀⠀⠘⡄⠀⠀⠀⣀⣼⣿⣿⣿⣹⡀⢸⠉⠁⠒⠈⠉⠁⠀⢸⢀⠇⠀⠀⢠⠻⢥⣠⣔⣃⡀⠀⠀⠀⠀⡿⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠛⡄⠀⠀⢧⡀⢀⣼⠿⢛⣿⠋⠈⣧⠧⠄⣷⠤⢀⣀⠀⠤⠖⠋⡟⠀⠀⠀⡾⠞⠋⠀⠀⠀⠈⠓⣄⠀⠀⢡⡆⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⢿⡄⠀⠀⢱⡟⠁⠀⠀⠉⡗⢉⣠⡠⠤⠄⣙⡆⠀⠀⠀⢀⠜⠀⠀⠀⣰⠁⠀⠀⠀⠀⠀⠀⠀⠸⡀⢀⡿⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⢻⣆⠀⣾⠷⠲⢶⠶⡜⢠⠊⠀⢀⣀⠤⣀⡉⡖⠒⠊⠁⠀⠀⢀⣴⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⡾⠁⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠙⢵⡇⣀⣤⣼⣑⠾⣧⣠⠊⠁⠀⠀⠀⠈⢣⣀⣀⡀⠤⠒⠊⠹⣧⠀⠀⢀⣀⡠⠤⠤⣤⣜⣟⡀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣽⠿⠟⣫⣡⡤⠄⠣⣀⣔⡭⢙⠷⣖⡉⠀⠀⠀⠀⣀⠤⢊⠼⠛⠁⠉⠁⠀⣒⠤⠤⣋⠙⠫⢿⣦⡀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⢠⣾⣋⣥⠖⠋⠁⠀⠱⡀⠀⠀⠈⠉⠁⣀⣄⡹⠟⠚⠛⠟⠒⠛⡧⣀⡀⠀⠀⠀⢰⠁⠀⠀⠀⠉⠲⢄⠉⢪⣦⡀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠓⠊⠚⠲⠶⠦⠄⠠⠴⠗⠒⠒⠒⠚⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠁⠉⠉⠋⠛⠂⠚⠒⠒⠒⠒⠒⠒⠒⠓⠒⠉⠁⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    }
    -- 他のセクションの設定...

    --setting menu
    dashboard.section.buttons.val = {
      dashboard.button("o", "󰏇  Oil", ":Oil <CR>"),
      dashboard.button("n", "  Neogit", ":Neogit<CR>"),
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "  Recent file", ":Telescope oldfiles <CR>"),
      dashboard.button("f", "󰥨  Find file", ":Telescope find_files <CR>"),
      dashboard.button("g", "󰱼  Find text", ":Telescope live_grep <CR>"),
      dashboard.button("s", "  Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    -- setting footer
    dashboard.section.footer.val = {
      "",
      "",

      "[LEPTILE/NORMAL]                                               ",
      "An alligator monster straight from the cartoons.               ",
      "",
      "",
      "",
      "",
      "",
      "",
      " ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ",
      "                                              ATK/ 800 DEF/1600",
      "59383041                                 Ⓒ1996 KAZUKI TAKAHASHI",
    }

    dashboard.section.header.val = header
    return dashboard.config
  end,
}

vim.pack.add({
    {src = "https://github.com/mason-org/mason.nvim"},
    {src = "https://github.com/nvim-lualine/lualine.nvim"},
})

require("mason").setup({})

require("lualine").setup()

-- Neotree
vim.pack.add({
  {
    src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
    version = vim.version.range('3')
  }, -- dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  -- optional, but recommended
  "https://github.com/nvim-tree/nvim-web-devicons",
})

-- Telescope
vim.pack.add({
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    "https://github.com/nvim-lua/plenary.nvim",
})


vim.pack.add({
    { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
})

require('blink.cmp').setup({
    fuzzy = { implementation = 'prefer_rust_with_warning' },
    signature = { enabled = true },
    keymap = {
        preset = "default",
        ["<C-space>"] = {},
        ["<C-p>"] = {},
        ["<Tab>"] = {},
        ["<S-Tab>"] = {},
        ["<C-y>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-n>"] = { "select_and_accept" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-b>"] = { "scroll_documentation_down", "fallback" },
        ["<C-f>"] = { "scroll_documentation_up", "fallback" },
        ["<C-l>"] = { "snippet_forward", "fallback" },
        ["<C-h>"] = { "snippet_backward", "fallback" },
        -- ["<C-e>"] = { "hide" },
    },

    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "normal",
    },

    completion = {
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 200,
        }
    },

    cmdline = {
        keymap = {
            preset = 'inherit',
            ['<CR>'] = { 'accept_and_enter', 'fallback' },
        },
    },

    sources = { default = { "lsp" } }
})


-- Autopairs
vim.pack.add({
    { src = "https://github.com/windwp/nvim-autopairs"}
})

require('nvim-autopairs').setup(
    {
    enabled = function(bufnr) return true end, -- control if auto-pairs should be enabled when attaching to a buffer
    disable_filetype = { "TelescopePrompt", "spectre_panel", "snacks_picker_input" },
    disable_in_macro = true, -- disable when recording or executing a macro
    disable_in_visualblock = false, -- disable when insert after visual block mode
    disable_in_replace_mode = true,
    ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=],
    enable_moveright = true,
    enable_afterquote = true, -- add bracket pairs after quote
    enable_check_bracket_line = true, --- check bracket in same line
    enable_bracket_in_quote = true, --
    enable_abbr = false, -- trigger abbreviation
    break_undo = true, -- switch for basic rule break undo sequence
    check_ts = false,
    map_cr = true,
    map_bs = true, -- map the <BS> key
    map_c_h = false, -- Map the <C-h> key to delete a pair
    map_c_w = false, -- map <c-w> to delete a pair if possible
}
)


-- Treesitter
vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter"}
})

require('nvim-treesitter').install {'rust', 'c', 'cpp'}

vim.pack.add({
    { src = "https://github.com/catppuccin/catppuccin"}
})

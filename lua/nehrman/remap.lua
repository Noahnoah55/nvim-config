vim.g.mapleader = " "

-- Map all double leader combos to no-op

local letters = {}

for i=string.byte('a'), string.byte('z') do
    table.insert(letters, string.char(i))
end

for _, la in pairs(letters) do
    vim.api.nvim_set_keymap("n", "<leader>"..la, "", {})
    for _, lb in pairs(letters) do
        vim.api.nvim_set_keymap("n", "<leader>"..la..lb, "", {})
    end
end

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pe", vim.cmd.Lex)

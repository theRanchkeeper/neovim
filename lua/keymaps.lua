
local opts = {noremap = true , silent = true}

local setKeymap = vim.keymap.set

--Nvim-tree
setKeymap('n','<leader>e',vim.cmd.NvimTreeToggle)
--vim.keymap.set('n','<leader>',vim.cmd("NvimTreeResize +10"))

--Lazy keymap
setKeymap('n','<leader>l',vim.cmd.Lazy)


--Editor keymaps

--Window navigation
setKeymap("n","<C-h>","<C-w>h",opts)
setKeymap("n","<C-j>","<C-w>j",opts)
setKeymap("n","<C-k>","<C-w>k",opts)
setKeymap("n","<C-l>","<C-w>l",opts)

--window resize

setKeymap("n","<C-Up>",":resize +2<CR>",opts)
setKeymap("n","<C-Down>",":resize -2<CR>",opts)
setKeymap("n","<C-Left>",":vertical resize +2<CR>",opts)
setKeymap("n","<C-Right>",":vertical resize -2<CR>",opts)
--setKeymap("n","<C-w>r",":resize",opts)


--Buffer navigation
setKeymap("n","<S-l>",vim.cmd.bnext,opts)
setKeymap("n","<S-h>",vim.cmd.bprevious,opts)


--terminal
setKeymap("n","<leader>nt",":belowright split resize 30 | terminal<CR>")

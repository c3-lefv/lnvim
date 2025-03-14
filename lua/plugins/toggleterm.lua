return {
  -- amongst your other plugins
  -- { "akinsho/toggleterm.nvim", version = "*", config = true },
  -- or
  {
    'akinsho/toggleterm.nvim', 
    version = "*", 
    opts = {--[[ things you want to change go here]]
      direction = "vertical",
    },
    config = function()
			local toggleterm = require('toggleterm')
			toggleterm.setup()
			vim.cmd [[
			tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

			" By applying the mappings this way you can pass a count to your
			" mapping to open a specific window.
			" For example: 2<C-t> will open terminal 2
			nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
			inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
			]]
		end,
  }
} 

-- return {
--   "neanias/everforest-nvim",
--   version = false,
--   lazy = false,
--   priority = 1000, -- make sure to load this before all the other start plugins
--   -- Optional; default configuration will be used if setup isn't called.
--   config = function()
--     require("everforest").setup({
--       background = "hard"
--     })
--     vim.cmd "colorscheme everforest"
--   end,
-- }

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 100,
	config = function()
		require("catppuccin").setup({
			flavour = "frappe",
			transparent_background = true,
		})
		vim.cmd("colorscheme catppuccin")
	end,
}

-- return {
-- 	"sainnhe/gruvbox-material",
-- 	config = function()
-- 		vim.cmd("colorscheme gruvbox-material")
-- 	end,
-- }

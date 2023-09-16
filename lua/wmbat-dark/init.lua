local lush = require('lush')
local base = require('wmbat-dark.base')
local loader = require('wmbat-dark.utils.loader')
local config_module = require('wmbat-dark.config')
local config = config_module.config

local function setup(user_config)
	if user_config then
		config_module.apply_config(user_config)
	end

	local load_plugins = loader.load_plugins(config)
	local load_langs = loader.load_langs(config)
	return lush.merge({base, load_plugins, load_langs})
end

return {setup = setup}

-- -- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- -- support an annotation like the following. Consult your server documentation.
-- -- @diagnostic disable: undefined-global
-- local theme = lush(function(injected_functions)-- 
-- 		-- nvim-tree
-- 		--
-- 		NvimTreeSymlink { fg = colours.white },
-- 		NvimTreeFolderName { fg = colours.green },
-- 		NvimTreeRootFolder { fg = colours.grey_0 },
-- 		NvimTreeFolderIcon { fg = colours.blue },
-- 		NvimTreeEmptyFolderName { fg = colours.green },
-- 		NvimTreeOpenedFolderName { fg = colours.green },
-- 		NvimTreeExecFile { fg = colours.white },
-- 		NvimTreeOpenedFile { fg = colours.white },
-- 		NvimTreeSpecialFile { fg = colours.yellow },
-- 		NvimTreeImageFile { fg = colours.white },
-- 		NvimTreeMarkdownFile { fg = colours.white },
-- 		NvimTreeIndentMarker { fg = colours.grey_0 },
-- 		NvimTreeGitDirty { fg = colours.orange },
-- 		NvimTreeGitStaged { fg = colours.blue },
-- 		NvimTreeGitMerge { fg = colours.cyan },
-- 		NvimTreeGitRenamed { fg = colours.purple },
-- 		NvimTreeGitNew { fg = colours.green },
-- 		NvimTreeGitDeleted { fg = colours.red },
-- 		NvimTreeLspDiagnosticsError { fg = colours.red },
-- 		NvimTreeLspDiagnosticsWarning { fg = colours.yellow },
-- 		NvimTreeLspDiagnosticsInformation { fg = colours.blue },
-- 		NvimTreeLspDiagnosticsHint { fg = colours.green },
-- }
-- end)
-- 
-- -- Return our parsed theme for extension or use elsewhere.
-- return theme
-- 
-- -- vi:nowrap

-- nvim-tree highlights
local lush = require("lush")
local base = require("wmbat-dark.base")
local styles = require("wmbat-dark.settings").styles
local colours = require("wmbat-dark.colours")
local table_concat = table.concat

local group = lush(function()
	return {
		NvimTreeSymlink { fg = colours.white },
		NvimTreeFolderName { fg = colours.green },
		NvimTreeRootFolder { fg = colours.grey_0 },
		NvimTreeFolderIcon { fg = colours.blue },
		NvimTreeEmptyFolderName { fg = colours.green },
		NvimTreeOpenedFolderName { fg = colours.green },
		NvimTreeExecFile { fg = colours.white },
		NvimTreeOpenedFile { fg = colours.white },
		NvimTreeSpecialFile { fg = colours.yellow },
		NvimTreeImageFile { fg = colours.white },
		NvimTreeMarkdownFile { fg = colours.white },
		NvimTreeIndentMarker { fg = colours.grey_0 },
		NvimTreeGitDirty { fg = colours.orange },
		NvimTreeGitStaged { fg = colours.blue },
		NvimTreeGitMerge { fg = colours.cyan },
		NvimTreeGitRenamed { fg = colours.purple },
		NvimTreeGitNew { fg = colours.green },
		NvimTreeGitDeleted { fg = colours.red },
		NvimTreeLspDiagnosticsError { fg = colours.red },
		NvimTreeLspDiagnosticsWarning { fg = colours.yellow },
		NvimTreeLspDiagnosticsInformation { fg = colours.blue },
		NvimTreeLspDiagnosticsHint { fg = colours.green }
	}
end)

return group

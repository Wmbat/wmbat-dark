-- nvim-tree highlights
local lush = require("lush")
local base = require("wmbat-dark.base")

local M = {}

M = lush(function()
    return {
        NvimTreeSymlink { fg = base.white },
        NvimTreeFolderName { fg = base.green },
        NvimTreeRootFolder { fg = base.grey_0 },
        NvimTreeFolderIcon { fg = base.blue },
        NvimTreeEmptyFolderName { fg = base.green },
        NvimTreeOpenedFolderName { fg = base.green },
        NvimTreeExecFile { fg = base.white },
        NvimTreeOpenedFile { fg = base.white },
        NvimTreeSpecialFile { fg = base.yellow },
        NvimTreeImageFile { fg = base.white },
        NvimTreeMarkdownFile { fg = base.white },
        NvimTreeIndentMarker { fg = base.grey_0 },
        NvimTreeGitDirty { fg = base.orange },
        NvimTreeGitStaged { fg = base.blue },
        NvimTreeGitMerge { fg = base.cyan },
        NvimTreeGitRenamed { fg = base.purple },
        NvimTreeGitNew { fg = base.green },
        NvimTreeGitDeleted { fg = base.red },
        NvimTreeLspDiagnosticsError { fg = base.red },
        NvimTreeLspDiagnosticsWarning { fg = base.yellow },
        NvimTreeLspDiagnosticsInformation { fg = base.blue },
        NvimTreeLspDiagnosticsHint { fg = base.green }
    }
end)

return M

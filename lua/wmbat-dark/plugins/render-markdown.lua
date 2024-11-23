-- render-markdown highlights
--
local lush = require("lush")
local colours = require("wmbat-dark.colours")

local group = lush(function()
    return {
        RenderMarkdownH1Bg { bg = colours.dark_purple },
        RenderMarkdownH2Bg { bg = colours.dark_blue },
        RenderMarkdownH3Bg { bg = colours.dark_green },
        RenderMarkdownH4Bg { bg = colours.dark_red },
        RenderMarkdownH5Bg { bg = colours.dark_orange },
        RenderMarkdownH6Bg { bg = colours.dark_yellow },
        RenderMarkdownCode { bg = colours.black_1 },
        RenderMarkdownCodeInline { bg = colours.black_1 },
    }
end)

return group

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
-- vim.lsp.config("basedpyright", {
--   root_markers = { ".git", { "pyproject.toml" } },
--   settings = {
--     basedpyright = {
--       analysis = {
--         autoSearchPaths = true,
--         diagnosticMode = "openFilesOnly",
--         useLibraryCodeForTypes = true,
--         typeCheckingMode = "basic",
--         diagnosticSeverityOverrides = {
--           reportAny = false,
--           reportMissingTypeArgument = false,
--           reportMissingTypeStubs = false,
--           reportUnknownArgumentType = false,
--           reportUnknownMemberType = false,
--           reportUnknownParameterType = false,
--           reportUnknownVariableType = false,
--           reportUnusedCallResult = false,
--         },
--         ignore = { ".venv" },
--       },
--     },
--   },
-- })
-- vim.lsp.enable("basedpyright")

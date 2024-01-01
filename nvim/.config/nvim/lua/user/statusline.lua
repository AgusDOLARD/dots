vim.opt.laststatus = 3

local function mode()
    local current_mode = vim.api.nvim_get_mode().mode
    return string.format(" %s ", current_mode):upper()
end

local function edited()
    local bufinfo = vim.fn.getbufinfo(vim.fn.bufnr())
    return bufinfo[1].changed == 1 and "*" or ""
end

local function filepath()
    local fpath = vim.fn.fnamemodify(vim.fn.expand("%"), ":~:.:h")
    if fpath == "" or fpath == "." then return " " end

    return string.format(" %%<%s/", fpath)
end
local function filename()
    local fname = vim.fn.expand("%:t")
    if fname == "" then return "" end
    return fname .. " "
end

local function filetype() return string.format(" %s ", vim.bo.filetype) end

local function lineinfo()
    if vim.bo.filetype == "alpha" then return "" end
    return " %l:%c "
end

Statusline = {}

Statusline.active = function()
    return table.concat({
        "%#WildMenu#",
        mode(),
        "%#NormalFloat# ",
        "%=",
        filepath(),
        filename(),
        edited(),
        "%=",
        "%=%#WildMenu#",
        filetype(),
        lineinfo(),
    })
end

function Statusline.inactive() return " %F" end

function Statusline.short() return "%#StatusLineNC#   NvimTree" end

vim.api.nvim_exec(
    [[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Statusline.short()
  augroup END
]],
    false
)

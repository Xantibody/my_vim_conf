local options = {
	encoding = "utf-8",
	fileencoding = "utf-8",
	expandtab = true,
	shiftwidth = 2,
	tabstop = 2,
  relativenumber = true,
  number = true,
}

-- this loop config setting
for k, v in pairs(options) do
    vim.opt[k] = v
end

keys = {}
keys["x"] = ""
keys["xy"] = ":HopAnywhere<CR>"
keys["x1"] = ":HopChar1<CR>"
keys["x2"] = ":HopChar2<CR>"
keys["xl"] = ":HopLine<CR>"
keys["xb"] = ":HopPatternBC<CR>"
keys["xa"] = ":HopPatternAC<CR>"
keys["a"] = ""
keys["a"] = ":HopPattern<CR>"
keys["xw"] = ":HopWord<CR>"
keys["xwa"] = ":HopWordAC<CR>"
keys["xwb"] = ":HopWordBC<CR>"
keys["xc"] = ":HopWordCurrentLine<CR>"
keys["xz"] = ":HopPatternCurrentLine<CR>"

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("n", k, v, { noremap = true, silent = false })
end

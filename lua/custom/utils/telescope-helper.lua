local M = {}

local _, telescope = pcall(require, "telescope")
local _, themes = pcall(require, "telescope.themes")
local _, utils = pcall(require, "telescope.utils")
local _, builtin = pcall(require, "telescope.builtin")

local function mysplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t = {}
	for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
		table.insert(t, str)
	end
	return t
end

function M.find_java_files(opts)
	opts = opts or {}
	local theme_opts = {
		search_file = ".java",
	}
	opts.path_display = function(opts, path)
		local tail = utils.path_tail(path)
		local taillen = string.len(tail)
		local newsplit = {}
		newsplit = mysplit(path, "/")
		local stringtodo = ""
		local stringconcat = {}
		local over5 = false
		for k, v in pairs(newsplit) do
			if v ~= tail then
				if k == 6 then
					table.insert(stringconcat, "./" .. v)
				elseif k >= 7 then
					table.insert(stringconcat, "/" .. v)
					over5 = true
				elseif k <= 5 then
					over5 = false
				end
			end
		end
		if over5 then
			stringtodo = table.concat(stringconcat) .. "/"
		else
			stringtodo = string.sub(tail, 1, (taillen - 5))
		end
		return string.format("%s (%s)", stringtodo, tail)
	end
	opts = vim.tbl_deep_extend("force", theme_opts, opts)
	builtin.find_files(opts)
end
return M

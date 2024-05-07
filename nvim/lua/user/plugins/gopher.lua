-- :GoTagAdd json " For add json tag
-- :GoTagRm yaml " For remove yaml tag

-- :GoMod tidy " Runs `go mod tidy`
-- :GoMod init asdf " Runs `go mod init asdf`

-- :GoGet github.com/gorilla/mux

-- :GoImpl [receiver] [interface]
-- " Also you can put cursor on the struct and run:
-- :GoImpl [interface]

-- :GoTestAdd - Generate one test for a specific function/method
-- :GoTestsAll - Generate all tests for all functions/methods in current file
-- :GoTestsExp - Generate tests only for exported functions/methods in current file

-- " Run `go generate` in cwd path
-- :GoGenerate
-- " Run `go generate` for current file
-- :GoGenerate %

-- :GoCmt - Generate doc comment

-- :GoIfErr - Generate if err

return {
	"olexsmir/gopher.nvim",
	ft = { "go" },
	config = function(_, opts)
		require("gopher").setup(opts)
	end,
	build = function()
		vim.cmd([[silent! GoInstallDeps]])
	end,
}

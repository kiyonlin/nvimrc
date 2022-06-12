-- https://github.com/rcarriga/vim-ultest
local present, ultest = pcall(require, "ultest")
if not present then
  return
end

vim.cmd [[
  let g:ultest_virtual_text = 1
  let g:ultest_pass_sign = ""
  let g:ultest_fail_sign = ""
  let g:ultest_running_sign = ""
  let g:ultest_not_run_sign = "?"
  let g:ultest_max_threads = 12
  let g:ultest_output_on_line = 0
  let g:ultest_use_pty = 1
]]


-- dap config
local options = {
  builders = {
    ["go#gotest"] = function(cmd)
      local args = {}
      for i = 3, #cmd - 1, 1 do
        local arg = cmd[i]
        if vim.startswith(arg, "-") then
          -- Delve requires test flags be prefix with 'test.'
          arg = "-test." .. string.sub(arg, 2)
        end
        args[#args + 1] = arg
      end
      return {
        dap = {
          type = "go",
          name = "Debug test (go.mod)",
          request = "launch",
          mode = "test",
          program = "./${relativeFileDirname}",
          dlvToolPath = vim.fn.exepath("dlv"),
          args = args,
        },
        parse_result = function(lines)
          return lines[#lines] == "FAIL" and 1 or 0
        end
      }
    end
  }
}

ultest.setup(options)

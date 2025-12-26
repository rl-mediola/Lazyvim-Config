local cmake = require("cmake-tools")

local keys = {}

if cmake.is_cmake_project() then
  keys = {
    {
      "<leader>cb",
      function()
        vim.cmd("CMakeBuild")
      end,
      desc = "CMakeBuild",
    },
    {
      "<leader>cx",
      function()
        vim.cmd("CMakeRun")
      end,
      desc = "CMakeRun",
    },
  }
end

return {
  'Civitasv/cmake-tools.nvim',
  opts = {
    cmake_generate_options = { "-GNinja", "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
    cmake_build_directory = "build",
  },
  keys = keys,
}

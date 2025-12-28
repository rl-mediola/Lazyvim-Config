return {
  -- Native comments does not support /**/ in C/C++
  "folke/ts-comments.nvim",
  opts = {
    lang = {
    c = { "// %s", "/* %s */" },
    cpp = { "// %s", "/* %s */" },
    },
  },    
  event = "VeryLazy",
  enabled = vim.fn.has("nvim-0.10.0") == 1,
}
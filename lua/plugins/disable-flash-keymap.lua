  return {
    -- Disable ";" and "," keymaps
    "folke/flash.nvim",
    opts = {
        modes = {
            char = {
                keys = { "f", "F", "t", "T" },
            },
        },
    },
}
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["bd"] = "none",
        },
      },
    },

    buffers = {
      window = {
        mappings = {
          ["d"] = "buffer_delete",
          ["b"] = "none",
        },
      },
    },
  },
}

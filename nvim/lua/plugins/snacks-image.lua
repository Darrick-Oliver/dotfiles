return {
  "folke/snacks.nvim",
  opts = {
    image = { enabled = true },
  },
  init = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      once = true,
      callback = function()
        local Placement = require("snacks.image.placement")
        local orig_update = Placement.update
        Placement.update = function(self, ...)
          if self:ready() and self:valid() then
            local wins = self:wins()
            if #wins > 0 then
              self.hidden = false
            end
          end
          return orig_update(self, ...)
        end
      end,
    })
  end,
}

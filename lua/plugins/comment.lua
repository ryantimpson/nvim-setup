return {
  "numToStr/Comment.nvim",
  config = function()
    local comment = require("Comment")

    comment.setup({
      mappings = {
		  basic = true,
		  extra = false,
	  }
  	})

  end,
}

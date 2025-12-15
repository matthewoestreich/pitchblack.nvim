# pitchblack.nvim

```lua
{
  "matthewoestreich/pitchblack.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {
    "HiPhish/rainbow-delimiters.nvim",
  },
  opts = {
    enabled = boolean,
    rainbow_delimiters = {
      enabled = boolean,
		  colors = {
			  level_one = "#FFD700", -- First level of nesting
			  level_two = "#DA70D6", -- Second level of nesting
			  level_three = "#179fff", -- Third level of nesting
		  },
      -- We accept all rainbow-delimiters options, which you can pass here
      -- and the above options are ignored.
      -- See here for rainbow-delimiters options: https://github.com/HiPhish/rainbow-delimiters.nvim
      override = {
        -- native rainbow-delimiters options go here
      }
    }
  },
}
```

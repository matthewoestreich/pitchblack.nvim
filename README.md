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
# Screenshots

<img width="1918" height="1138" alt="rust_syntax" src="https://github.com/user-attachments/assets/13245b09-6d92-4cce-bcad-d018030e1fe8" />

---

<img width="1918" height="1138" alt="lua_syntax" src="https://github.com/user-attachments/assets/d0a8ee92-7bf1-4b04-9529-11cb8c009e94" />

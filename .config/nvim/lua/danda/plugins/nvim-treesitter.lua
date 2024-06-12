return 
{
  "nvim-treesitter/nvim-treesitter",
  event = 
{ "BufReadPre", "BufNewFile" 
},
  build = ":TSUpdate",
  dependencies = 
{
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  
},

  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup(
{
      -- enable syntax highlighting
      highlight = 
{
        enable = true,
      
},
      -- enable indentation
      -- indent = 
{ enable = true 
},
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = 
{ enable = true 
},
      -- ensure these language parsers are installed
      ensure_installed = 
{
        "json",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "c_sharp"
      
},

      ignore_install = 
{ "dart" 
}, -- dart has bug when inserting new line
      -- auto install above language parsers
      auto_install = true,
      playground = 
{
        enable = true,
        disable = 
{
},
        updatetime = 25,     -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = 
{
          toggle_query_editor = 'o',
          toggle_hl_groups = 'i',
          toggle_injected_languages = 't',
          toggle_anonymous_nodes = 'a',
          toggle_language_display = 'I',
          focus_language = 'f',
          unfocus_language = 'F',
          update = 'R',
          goto_node = '<cr>',
          show_help = '?',
        
},
      
}
    
})
  end

}

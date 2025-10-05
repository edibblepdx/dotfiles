-- Highlight todo, notes, etc in comments
return {
  {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('todo-comments').setup()
    end
  },
}
-- vim: ts=2 sts=2 sw=2 et

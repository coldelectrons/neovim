{ pkgs, ... }:
{
  vimAlias = true;
  withNodeJs = true;
  withRuby = true;

  luaLoader.enable = true;

  extraPlugins = with pkgs.vimPlugins; [
    #vim-bufkill
  ];

  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  opts = {
    # smartindent = true;
    breakindent = true;
    cursorline = true;

    tabstop = 2;
    shiftwidth = 2;

    wrap = true;
    linebreak = true;

    number = true;
    relativenumber = true;

    signcolumn = "yes:1";

    mouse = "a";

    foldcolumn = "0";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;

    updatetime = 50;

    swapfile = false;
    backup = false;
    undofile = true;

    termguicolors = true;

    ignorecase = true;
    smartcase = true;

    splitbelow = true;
    splitright = true;

    scrolloff = 4;

    laststatus = 3;

  };

  extraConfigLua = ''
    if vim.g.neovide then
      vim.keymap.set('n', '<C-s>', ':w<CR>') -- Save
      vim.keymap.set('v', '<C-c>', '"+y') -- Copy
      vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
      vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
      vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
      vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
      vim.keymap.set({ "n", "v" }, "<C-= >", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
      vim.keymap.set({ "n", "v" }, "<C-- >", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
      vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
    end
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>x";
      action = "";
      options = {
        desc = "e[x]tras";
      };
    }
    {
      mode = "n";
      key = "<leader>ch";
      action = "<cmd>noh<cr>";
      options = {
        silent = true;
        desc = "Clear highlight";
      };
    }
    {
      mode = "n";
      key = "<leader>cs";
      action = ''<cmd>let @/=""<cr>'';
      options = {
        silent = true;
        desc = "Clear search";
      };
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>:BD<cr>";
      options = {
        silent = true;
        desc = "Delete buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>bn";
      action = "<cmd>:bnext<cr>";
      options = {
        silent = true;
        desc = "Next buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<cmd>:bprevious<cr>";
      options = {
        silent = true;
        desc = "Previous buffer";
      };
    }
    {
      mode = "t";
      key = "<C-o>";
      action = ''<C-\><C-n>'';
      options = {
        silent = true;
        desc = "Exit terminal mode";
      };
    }
    {
      mode = "n";
      key = "<A-Up>";
      action = ''<C-\\><C-N><C-w>k'';
      options = {
        silent = true;
        desc = "window move, upward";
      };
    }
    {
      mode = "n";
      key = "<A-Down>";
      action = ''<C-\\><C-N><C-w>j'';
      options = {
        silent = true;
        desc = "window move, down";
      };
    }
    {
      mode = "n";
      key = "<A-Left>";
      action = ''<C-\\><C-N><C-w>h'';
      options = {
        silent = true;
        desc = "window move, left";
      };
    }
    {
      mode = "n";
      key = "<A-Right>";
      action = ''<C-\\><C-N><C-w>l'';
      options = {
        silent = true;
        desc = "window move, right";
      };
    }
    {
      mode = "i";
      key = "<A-j>";
      action = ''<Esc>:m .+1<CR>==gi'';
      options = {
        silent = true;
        desc = "move current line/block upward";
      };
    }
    {
      mode = "i";
      key = "<A-k>";
      action = ''<Esc>:m .-2<CR>==gi'';
      options = {
        silent = true;
        desc = "move current line/block downward";
      };
    }
    {
      mode = "n";
      key = "<A-j>";
      action = ''<Esc>:m .+1<CR>==gi'';
      options = {
        silent = true;
        desc = "move current line/block upward";
      };
    }
    {
      mode = "n";
      key = "<A-k>";
      action = ''<Esc>:m .-2<CR>==gi'';
      options = {
        silent = true;
        desc = "move current line/block downward";
      };
    }
    {
      mode = "n";
      key = "<C-h>";
      action = ''<C-w>h'';
      options = {
        silent = true;
        desc = "better window movement";
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = ''<C-w>j'';
      options = {
        silent = true;
        desc = "better window movement";
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = ''<C-w>k'';
      options = {
        silent = true;
        desc = "better window movement";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = ''<C-w>l'';
      options = {
        silent = true;
        desc = "better window movement";
      };
    }
    {
      mode = "n";
      key = "<C-Up>";
      action = '':resize -2<CR>'';
      options = {
        silent = true;
        desc = "resize with arrows";
      };
    }
    {
      mode = "n";
      key = "<C-Down>";
      action = '':resize +2<CR>'';
      options = {
        silent = true;
        desc = "resize with arrows";
      };
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = '':vertical resize -2<CR>'';
      options = {
        silent = true;
        desc = "resize with arrows";
      };
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = '':vertical resize +2<CR>'';
      options = {
        silent = true;
        desc = "resize with arrows";
      };
    }
    {
      mode = "n";
      key = "<leader>w";
      action = '''';
      options = {
        silent = true;
        desc = "Window";
      };
    }
    {
      mode = "n";
      key = "<leader>ws";
      action = ''<C-W>s'';
      options = {
        silent = true;
        desc = "Window split horizontally";
      };
    }
    {
      mode = "n";
      key = "<leader>wv";
      action = ''<C-W>v'';
      options = {
        silent = true;
        desc = "Window split vertically";
      };
    }
    {
      mode = "n";
      key = "<leader>wc";
      action = ''<C-W>c'';
      options = {
        silent = true;
        desc = "Window split close";
      };
    }
  ];
}

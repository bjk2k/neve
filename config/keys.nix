# Thanks for the keybinds primeagen and folke!
{ lib, config, ... }: {
  options = { keys.enable = lib.mkEnableOption "Enable keys module"; };
  config = lib.mkIf config.keys.enable {
    globals.mapleader = ",";
    keymaps = [
      # Disable arrow keys
      {
        mode = [ "n" "i" ];
        key = "<Up>";
        action = "<Nop>";
        options = {
          silent = true;
          noremap = true;
          desc = "Disable Up arrow key";
        };
      }
      {
        mode = [ "n" "i" ];
        key = "<Down>";
        action = "<Nop>";
        options = {
          silent = true;
          noremap = true;
          desc = "Disable Down arrow key";
        };
      }
      {
        mode = [ "n" "i" ];
        key = "<Right>";
        action = "<Nop>";
        options = {
          silent = true;
          noremap = true;
          desc = "Disable Right arrow key";
        };
      }
      {
        mode = [ "n" "i" ];
        key = "<Left>";
        action = "<Nop>";
        options = {
          silent = true;
          noremap = true;
          desc = "Disable Left arrow key";
        };
      }
      # Tabs
      {
        mode = "n";
        key = "<leader><tab>l";
        action = "<cmd>tablast<cr>";
        options = {
          silent = true;
          desc = "Last tab";
        };
      }

      {
        mode = "n";
        key = "<leader><tab>f";
        action = "<cmd>tabfirst<cr>";
        options = {
          silent = true;
          desc = "First Tab";
        };
      }

      # -- Flash
      {
        mode = [ "n" "x" "o" ];
        key = "s";
        action.__raw = "function() require'flash'.jump() end";
        options = { desc = "Flash jump"; };
      }
      {
        mode = [ "n" "x" "o" ];
        key = "S";
        action.__raw = "function() require'flash'.treesitter() end";
        options = { desc = "Flash Treesitter Jump"; };
      }
      {
        mode = "o";
        key = "r";
        action.__raw = "function() require'flash'.remote() end";
        options = { desc = "Flash Remote Action"; };
      }
      {
        mode = [ "o" "x" ];
        key = "R";
        action.__raw = "function() require'flash'.treesitter_search() end";
        options = { desc = "Flash Treesitter Search"; };
      }
      {
        mode = [ "c" ];
        key = "<c-s>";
        action.__raw = "function() require'flash'.toggle() end";
        options = { desc = "Flash toggle"; };
      }

      {
        mode = "n";
        key = "<leader><tab><tab>";
        action = "<cmd>tabnew<cr>";
        options = {
          silent = true;
          desc = "New Tab";
        };
      }

      {
        mode = "n";
        key = "<leader><tab>]";
        action = "<cmd>tabnext<cr>";
        options = {
          silent = true;
          desc = "Next Tab";
        };
      }

      {
        mode = "n";
        key = "<leader><tab>d";
        action = "<cmd>tabclose<cr>";
        options = {
          silent = true;
          desc = "Close tab";
        };
      }

      {
        mode = "n";
        key = "<leader><tab>[";
        action = "<cmd>tabprevious<cr>";
        options = {
          silent = true;
          desc = "Previous Tab";
        };
      }

      # Windows
      {
        mode = "n";
        key = "<leader>ww";
        action = "<C-W>p";
        options = {
          silent = true;
          desc = "Other window";
        };
      }

      {
        mode = "n";
        key = "<leader>wd";
        action = "<C-W>c";
        options = {
          silent = true;
          desc = "Delete window";
        };
      }

      {
        mode = "n";
        key = "<leader>w-";
        action = "<C-W>s";
        options = {
          silent = true;
          desc = "Split window below";
        };
      }

      {
        mode = "n";
        key = "<leader>w|";
        action = "<C-W>v";
        options = {
          silent = true;
          desc = "Split window right";
        };
      }

      # {
      #   mode = "n";
      #   key = "<leader>-";
      #   action = "<C-W>s";
      #   options = {
      #     silent = true;
      #     desc = "Split window below";
      #   };
      # }

      # {
      #   mode = "n";
      #   key = "<leader>|";
      #   action = "<C-W>v";
      #   options = {
      #     silent = true;
      #     desc = "Split window right";
      #   };
      # }

      {
        mode = "n";
        key = "<C-s>";
        action = "<cmd>w<cr><esc>";
        options = {
          silent = true;
          desc = "Save file";
        };
      }

      # Quit/Session
      {
        mode = "n";
        key = "<leader>qq";
        action = "<cmd>quitall<cr><esc>";
        options = {
          silent = true;
          desc = "Quit all";
        };
      }

      {
        mode = "n";
        key = "<leader>qs";
        action = ":lua require('persistence').load()<cr>";
        options = {
          silent = true;
          desc = "Restore session";
        };
      }

      {
        mode = "n";
        key = "<leader>ql";
        action = "<cmd>lua require('persistence').load({ last = true })<cr>";
        options = {
          silent = true;
          desc = "Restore last session";
        };
      }

      {
        mode = "n";
        key = "<leader>qd";
        action = "<cmd>lua require('persistence').stop()<cr>";
        options = {
          silent = true;
          desc = "Don't save current session";
        };
      }

      # Nerdy
      {
        mode = "n";
        key = "<leader>ug";
        action = ":lua require('telescope').extensions.nerdy.nerdy()<cr>";
        options = {
          silent = true;
          desc = "Toggle Nerdy Glyph UI";
        };
      }

      # Toggle
      {
        mode = "n";
        key = "<leader>ul";
        action = ":lua ToggleLineNumber()<cr>";
        options = {
          silent = true;
          desc = "Toggle Line Numbers";
        };
      }

      {
        mode = "n";
        key = "<leader>uL";
        action = ":lua ToggleRelativeLineNumber()<cr>";
        options = {
          silent = true;
          desc = "Toggle Relative Line Numbers";
        };
      }

      {
        mode = "n";
        key = "<leader>uw";
        action = ":lua ToggleWrap()<cr>";
        options = {
          silent = true;
          desc = "Toggle Line Wrap";
        };
      }

      # Inlay Hints
      {
        mode = "n";
        key = "<leader>uh";
        action = ":lua ToggleInlayHints()<cr>";
        options = {
          silent = true;
          desc = "Toggle Inlay Hints";
        };
      }

      {
        mode = "v";
        key = "J";
        action = ":m '>+1<CR>gv=gv";
        options = {
          silent = true;
          desc = "Move up when line is highlighted";
        };
      }

      {
        mode = "v";
        key = "K";
        action = ":m '<-2<CR>gv=gv";
        options = {
          silent = true;
          desc = "Move down when line is highlighted";
        };
      }

      {
        mode = "n";
        key = "J";
        action = "mzJ`z";
        options = {
          silent = true;
          desc =
            "Allow cursor to stay in the same place after appeding to current line";
        };
      }

      {
        mode = "v";
        key = "<";
        action = "<gv";
        options = {
          silent = true;
          desc = "Indent while remaining in visual mode.";
        };
      }

      {
        mode = "v";
        key = ">";
        action = ">gv";
        options = {
          silent = true;
          desc = "Indent while remaining in visual mode.";
        };
      }

      {
        mode = "n";
        key = "<C-d>";
        action = "<C-d>zz";
        options = {
          silent = true;
          desc = "Allow <C-d> and <C-u> to keep the cursor in the middle";
        };
      }

      {
        mode = "n";
        key = "<C-u>";
        action = "<C-u>zz";
        options = {
          desc = "Allow C-d and C-u to keep the cursor in the middle";
        };
      }

      # Remap for dealing with word wrap and adding jumps to the jumplist.
      {
        mode = "n";
        key = "j";
        action.__raw =
          "\n        [[(v:count > 1 ? 'm`' . v:count : 'g') . 'j']]\n      ";
        options = {
          expr = true;
          desc =
            "Remap for dealing with word wrap and adding jumps to the jumplist.";
        };
      }

      {
        mode = "n";
        key = "k";
        action.__raw =
          "\n        [[(v:count > 1 ? 'm`' . v:count : 'g') . 'k']]\n      ";
        options = {
          expr = true;
          desc =
            "Remap for dealing with word wrap and adding jumps to the jumplist.";
        };
      }

      {
        mode = "n";
        key = "n";
        action = "nzzzv";
        options = { desc = "Allow search terms to stay in the middle"; };
      }

      {
        mode = "n";
        key = "N";
        action = "Nzzzv";
        options = { desc = "Allow search terms to stay in the middle"; };
      }

      # Paste stuff without saving the deleted word into the buffer
      {
        mode = "x";
        key = "<leader>p";
        action = ''"_dP'';
        options = { desc = "Deletes to void register and paste over"; };
      }

      # NeoTree
      {
        mode = "n";
        key = "<leader>E";
        action = "<cmd>Neotree toggle<CR>";
        options = {
          silent = true;
          desc = "Explorer NeoTree (cwd)";
        };
      }

      # Copy stuff to system clipboard with <leader> + y or just y to have it just in vim
      {
        mode = [ "n" "v" ];
        key = "<leader>y";
        action = ''"+y'';
        options = { desc = "Copy to system clipboard"; };
      }

      {
        mode = [ "n" "v" ];
        key = "<leader>Y";
        action = ''"+Y'';
        options = { desc = "Copy to system clipboard"; };
      }

      # Delete to void register
      {
        mode = [ "n" "v" ];
        key = "<leader>D";
        action = ''"_d'';
        options = { desc = "Delete to void register"; };
      }

      # <C-c> instead of pressing esc just because
      {
        mode = "i";
        key = "<C-c>";
        action = "<Esc>";
      }

      {
        mode = "n";
        key = "<C-f>";
        action = "!tmux new tmux-sessionizer<CR>";
        options = { desc = "Switch between projects"; };
      }

      # Set highlight on search, but clear on pressing <Esc> in normal mode
      {
        mode = "n";
        key = "<Esc>";
        action = "<cmd>nohlsearch<CR>";
      }
      #
      # # -- Trailblazer
      # {
      #   mode = [ "n" "v" ];
      #   key = "<A-l>";
      #   action.__raw = ''
      #     function() 
      #       local trails = require("trailblazer.trails")
      #       require("trailblazer").switch_trail_mark_stack(trails.stacks.current_trail_mark_stack_name, false) -- fixes trails getting stuc
      #       require("trailblazer").new_trail_mark() 
      #     end
      #   '';
      #   options = { desc = "Trailblazer: toggle trail mark"; };
      # }
      #
      # {
      #   mode = [ "n" "v" ];
      #   key = "<A-j>";
      #   action.__raw = ''
      #     function() 
      #       local trails = require("trailblazer.trails")
      #       require("trailblazer").switch_trail_mark_stack(trails.stacks.current_trail_mark_stack_name, false) -- fixes trails getting stuc
      #     require('trailblazer').move_to_nearest(vim.api.nvim_get_current_buf(), 'fpath_up', 'lin_char_dist')
      #     end
      #   '';
      #
      #   options = { desc = "Trailblazer: next trail mark (global)"; };
      # }
      #
      # {
      #   mode = [ "n" "v" ];
      #   key = "<A-k>";
      #   action.__raw = ''
      #     function() 
      #       local trails = require("trailblazer.trails")
      #       require("trailblazer").move_to_nearest(vim.api.nvim_get_current_buf(), "fpath_down", "lin_char_dist") 
      #     end
      #   '';
      #   options = { desc = "Trailblazer: previous trail mark (global)"; };
      # }
      # {
      #   mode = [ "n" "v" ];
      #   key = "<A-m>";
      #   action.__raw = ''
      #     function() 
      #       require("trailblazer").toggle_trail_mark_list("quickfix")
      #     end
      #   '';
      #   options = { desc = "Trailblazer: toggle list (global)"; };
      # }
      # {
      #   mode = [ "n" "v" ];
      #   key = "<A-S>";
      #   action.__raw = ''
      #     function() 
      #       require("trailblazer").delete_all_trail_marks()
      #     end
      #   '';
      #   options = { desc = "Trailblazer: toggle list (global)"; };
      # }
      # {
      #   mode = [ "n" "v" ];
      #   key = "<A-.>";
      #   action.__raw = ''
      #     function() 
      #       function() require("trailblazer").switch_to_next_trail_mark_stack()
      #     end
      #   '';
      #   options = { desc = "Trailblazer: toggle list (global)"; };
      # }
      # {
      #   mode = [ "n" "v" ];
      #   key = "<A-,>";
      #   action.__raw = ''
      #     function() 
      #       function() require("trailblazer").switch_to_previous_trail_mark_stack()
      #     end
      #   '';
      #   options = { desc = "Trailblazer: toggle list (global)"; };
      # }
      # {
      #   mode = [ "n" ];
      #   key = "<A-`>";
      #   action.__raw = ''
      #     function() 
      #       vim.ui.input({ prompt = "Stack Name: " }, function(input)
      #         if not input then return end
      #         require("trailblazer").switch_trail_mark_stack(input, false)
      #         require("trailblazer").new_trail_mark()
      #       end)
      #     end
      #   '';
      #   options = { desc = "Trailblazer: Add new stack"; };
      # }
      # {
      #   mode = [ "n" ];
      #   key = "<A-'>";
      #   action.__raw = ''
      #     function() 
      #       local hi = require("fzf-lua.utils").ansi_from_hl
      #       local stacks = require("trailblazer.trails").stacks.trail_mark_stack_list
      #       local sorted_stacks = require("trailblazer.trails").stacks.get_sorted_stack_names()
      #       local current_stack = require("trailblazer.trails").stacks.current_trail_mark_stack_name
      #       vim.ui.select(sorted_stacks, {
      #         prompt = "Choose a stack ",
      #         format_item = function(item)
      #           local fitem = item
      #           local count = vim.tbl_count(stacks[item] and stacks[item].stack or {})
      #           if item == current_stack then fitem = hi("TrailblazerSelectedStack", " " .. fitem) end -- add icon to current stack
      #           fitem = string.sub(" ", #tostring(vim.fn.index(sorted_stacks, item) + 1), 1) .. fitem -- left align
      #           return count > 0 and fitem .. hi("Comment", string.format(" (%d)", count)) or fitem -- add trails count if more than zero
      #         end,
      #       }, require("trailblazer").switch_trail_mark_stack)
      #     end
      #   '';
      #   options = { desc = "Trailblazer: Switch Stack"; };
      # }
      # {
      #   mode = [ "n" ];
      #   key = "<A-s>";
      #   action.__raw = ''
      #     function() 
      #       local hi = require("fzf-lua.utils").ansi_from_hl
      #       local stacks = require("trailblazer.trails").stacks.trail_mark_stack_list
      #       local sorted_stacks = require("trailblazer.trails").stacks.get_sorted_stack_names()
      #       local current_stack = require("trailblazer.trails").stacks.current_trail_mark_stack_name
      #       vim.ui.select(sorted_stacks, {
      #         prompt = "Choose a stack ",
      #         format_item = function(item)
      #           local fitem = item
      #           local count = vim.tbl_count(stacks[item] and stacks[item].stack or {})
      #           if item == current_stack then fitem = hi("TrailblazerSelectedStack", " " .. fitem) end -- add icon to current stack
      #           fitem = string.sub(" ", #tostring(vim.fn.index(sorted_stacks, item) + 1), 1) .. fitem -- left align
      #           return count > 0 and fitem .. hi("Comment", string.format(" (%d)", count)) or fitem -- add trails count if more than zero
      #     end,
      #     }, require("trailblazer").switch_trail_mark_stack)
      #           end
      #   '';
      #   options = { desc = "Trailblazer: Select Mode"; };
      # }
      # {
      #   mode = [ "n" ];
      #   key = ''<A-">'';
      #   action.__raw = ''
      #     function() 
      #       local stacks = require("trailblazer.trails").stacks.get_sorted_stack_names()
      #       local current_stack = require("trailblazer.trails").stacks.current_trail_mark_stack_name
      #       stacks = vim.tbl_filter(function(stack) return stack ~= current_stack end, stacks)
      #       vim.ui.select(stacks, { prompt = "Delete stack " }, function(choice)
      #         if choice then require("trailblazer").delete_trail_mark_stack(choice) end
      #       end)
      #     end
      #   '';
      #   options = { desc = "Trailblazer: Delete Stack"; };
      # }
      #
    ];
  };
}

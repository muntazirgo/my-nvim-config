Vim�UnDo� ��	�f*��B��> ��K�A,g"\��   $                 9       9   9   9    d���   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             d��     �         #    5��                          h                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         $    �         $    5��                          i               %      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         /    5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      9local formatters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      8ocal formatters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      7cal formatters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      6al formatters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      5l formatters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      4 formatters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      3formatters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      2ormatters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      1rmatters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      0matters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      /atters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      .tters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      -ters = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      ,ers = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      +rs = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��     �         0      *s = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��      �         0      ) = require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��      �         0      (= require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d��      �         0      ' require("lvim.lsp.null-ls.formatters")5��                          i                      5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             d��"     �         0      &require("lvim.lsp.null-ls.formatters")5��       	                  r                      5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             d��"     �         0      %require("vim.lsp.null-ls.formatters")5��       	                  r                      5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             d��"     �         0      $require("im.lsp.null-ls.formatters")5��       	                  r                      5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             d��#     �         0      #require("m.lsp.null-ls.formatters")5��       	                  r                      5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             d��#    �         0      "require(".lsp.null-ls.formatters")5��       	                  r                      5�_�                            ����                                                                                                                                                                                                                                                                                                                               	                  V   	    d��D     �                !require("lsp.null-ls.formatters")   formatters.setup({   	{ command = "stylua" },   	{ command = "shfmt" },   	{ command = "black" },   	{   		command = "prettier",   *		extra_args = { "--print-width", "100" },   A		filetypes = { "typescript", "typescriptreact", "css", "html" },   	},   })    5��                          i                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               	                  V   	    d��E    �                 5��                          h                      5�_�                       d    ����                                                                                                                                                                                                                                                                                                                                                             d��     �      "   #         return   end       _-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting   .local formatting = null_ls.builtins.formatting   `-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics   0local diagnostics = null_ls.builtins.diagnostics   _-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/completion   .local completion = null_ls.builtins.completion   a-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions   2local code_actions = null_ls.builtins.code_actions   Z-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/hover   $local hover = null_ls.builtins.hover       null_ls.setup({     debug = false,     sources = {   g    formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),   $    -- python formatters and linters   <    -- formatting.black.with({ extra_args = { "--fast" } }),       formatting.autopep8,       diagnostics.flake8,       code_actions.refactoring,   !    -- lua formatters and linters       formatting.stylua,       diagnostics.luacheck,   "    -- bash formatters and linters       formatting.shfmt,       diagnostics.shellcheck,       code_actions.shellcheck,         },�   #               �               #   <local null_ls_status_ok, null_ls = pcall(require, "null-ls")   if not null_ls_status_ok then   	return   end       _-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting   .local formatting = null_ls.builtins.formatting   `-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics   0local diagnostics = null_ls.builtins.diagnostics   _-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/completion   .local completion = null_ls.builtins.completion   a-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions   2local code_actions = null_ls.builtins.code_actions   Z-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/hover   $local hover = null_ls.builtins.hover       null_ls.setup({   	debug = false,   	sources = {   e		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),   "		-- python formatters and linters   :		-- formatting.black.with({ extra_args = { "--fast" } }),   		formatting.autopep8,   		diagnostics.flake8,       code_actions.refactoring,   		-- lua formatters and linters   		formatting.stylua,       diagnostics.luacheck,    		-- bash formatters and linters   		formatting.shfmt,   		diagnostics.shellcheck,       code_actions.shellcheck,       	},   })5��            "      #               ,      E      �    #                      E                     �                       [       �      �      5�_�                        _    ����                                                                                                                                                                                                                                                                                                                                                             d��     �         "      e		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),5��       _                  �                     5�_�      !                  a    ����                                                                                                                                                                                                                                                                                                                                                             d��     �         "      g		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote",  } }),5��       a                  �                     5�_�       "           !      b    ����                                                                                                                                                                                                                                                                                                                                                             d��     �         "      i		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "" } }),5��       b                  �                     �       p                  �                     5�_�   !   #           "      r    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      x		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width",  } }),5��       r                  �                     5�_�   "   $           #      s    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      z		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "" } }),5��       s                  �                     5�_�   #   %           $      y    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      }		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" } }),5��       y                  �                     �       ~                  �                     �       }              
   �             
       5�_�   $   &           %      �    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      �		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" }, filetypes =  }),5��       �                  �                     5�_�   %   '           &      �    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      �		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" }, filetypes = {} }),5��       �                  �                     5�_�   &   (           '      �    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      �		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" }, filetypes = {""} }),5��       �               
   �              
       �       �                  �                     5�_�   '   )           (      �    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      �		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" }, filetypes = {"typescript", } }),5��       �                  �                     5�_�   (   *           )      �    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      �		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" }, filetypes = {"typescript", ""} }),5��       �                  �                     �       �                                       5�_�   )   +           *      �    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      �		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" }, filetypes = {"typescript", "typescriptreact", } }),5��       �                                       5�_�   *   ,           +      �    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      �		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" }, filetypes = {"typescript", "typescriptreact", ""} }),5��       �                                       �       �                  	                     5�_�   +   -           ,      �    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      �		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" }, filetypes = {"typescript", "typescriptreact", "css", } }),5��       �                                       5�_�   ,   .           -      �    ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "      �		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" }, filetypes = {"typescript", "typescriptreact", "css", ""} }),5��       �                                       5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                                                             d���    �      %   $   !     return   end       _-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting   .local formatting = null_ls.builtins.formatting   `-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics   0local diagnostics = null_ls.builtins.diagnostics   _-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/completion   .local completion = null_ls.builtins.completion   a-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions   2local code_actions = null_ls.builtins.code_actions   Z-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/hover   $local hover = null_ls.builtins.hover       null_ls.setup({     debug = false,     sources = {       formatting.prettier.with({   c      extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" },   H      filetypes = { "typescript", "typescriptreact", "css", "html" } }),   $    -- python formatters and linters   <    -- formatting.black.with({ extra_args = { "--fast" } }),       formatting.autopep8,       diagnostics.flake8,       code_actions.refactoring,   !    -- lua formatters and linters       formatting.stylua,       diagnostics.luacheck,   "    -- bash formatters and linters       formatting.shfmt,       diagnostics.shellcheck,       code_actions.shellcheck,     },�   $               �               "   <local null_ls_status_ok, null_ls = pcall(require, "null-ls")   if not null_ls_status_ok then   	return   end       _-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting   .local formatting = null_ls.builtins.formatting   `-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics   0local diagnostics = null_ls.builtins.diagnostics   _-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/completion   .local completion = null_ls.builtins.completion   a-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions   2local code_actions = null_ls.builtins.code_actions   Z-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/hover   $local hover = null_ls.builtins.hover       null_ls.setup({   	debug = false,   	sources = {   �		formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" }, filetypes = {"typescript", "typescriptreact", "css", "html"} }),   "		-- python formatters and linters   :		-- formatting.black.with({ extra_args = { "--fast" } }),   		formatting.autopep8,   		diagnostics.flake8,   		code_actions.refactoring,   		-- lua formatters and linters   		formatting.stylua,   		diagnostics.luacheck,    		-- bash formatters and linters   		formatting.shfmt,   		diagnostics.shellcheck,   		code_actions.shellcheck,   	},   })5��            !      $               {      �      �    $                      �                     �                  !      [       G      &      5�_�   .   0           /      	    ����                                                                                                                                                                                                                                                                                                                                                             d��#    �         %      	debug = false,5��       	                 G                    5�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                                                V       d��S     �         %      		formatting.prettier.with({   `			extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" },   B			filetypes = { "typescript", "typescriptreact", "css", "html" },   		}),5��                         Z      �       �       5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                                                V       d��T    �         &          �         %    5��                          Z                     �                         Z                    �                         `                     �                         _                     �                        ^                    �                         `                     �                         _                     �                        ^                    �                         k                     �                         j                     �                     	   i             	       �                        q                    5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                             d���     �                _-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting5��                          h       `               5�_�   2   4           3          ����                                                                                                                                                                                                                                                                                                                                                             d���     �                `-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics5��                          �       a               5�_�   3   5           4          ����                                                                                                                                                                                                                                                                                                                                                             d���     �                _-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/completion5��                          �       `               5�_�   4   6           5   	       ����                                                                                                                                                                                                                                                                                                                                                             d���     �      	          a-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/code_actions5��                          �       b               5�_�   5   7           6   
       ����                                                                                                                                                                                                                                                                                                                                                             d���    �   	   
          Z-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/hover5��    	                      *      [               5�_�   6   8           7          ����                                                                                                                                                                                                                                                                                                                                                             d���     �         !    5��                                               �                                              �                                              �                                              �                                               5�_�   7   9           8          ����                                                                                                                                                                                                                                                                                                                                                             d���     �         "    5��                          ]                     �                         `                     �                         _                     �                         ^                     �                          ]                     5�_�   8               9          ����                                                                                                                                                                                                                                                                                                                                                             d���   
 �         #    5��                          h                     �                         k                     �                         j                     �                         i                     �                          h                     5��
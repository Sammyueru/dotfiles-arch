return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },

  config = function()
    vim.api.nvim_create_autocmd("LspAttach", {
      desc = "LSP Actions",
      callback = function(args)
        local opts = { buffer = args.buf, noremap = true, silent = true }
        vim.keymap.set("n", "K",  vim.lsp.buf.hover,      opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      end,
    })

    local function buf_root(bufnr)
      local fname = vim.api.nvim_buf_get_name(bufnr)
      local root = vim.fs.find({ "Package.swift", ".git" }, { upward = true, path = fname })[1]
      return root and vim.fs.dirname(root) or vim.loop.cwd()
    end

    local function already_running(bufnr)
      local clients = vim.lsp.get_clients({ name = "sourcekit", bufnr = bufnr })
      return clients and #clients > 0
    end

    local function start_sourcekit(bufnr)
      if already_running(bufnr) then return end
      if vim.fn.executable("sourcekit-lsp") ~= 1 then return end

      local common = {
        name = "sourcekit",
        cmd = { "sourcekit-lsp" },
        root_dir = buf_root(bufnr),
        filetypes = { "swift", "objc", "objcpp" },
      }

      local cfg
      if vim.lsp and vim.lsp.config then
        local ok1, res1 = pcall(vim.lsp.config, "sourcekit", {
          cmd = common.cmd,
          root_dir = common.root_dir,
          filetypes = common.filetypes,
        })
        if ok1 and type(res1) == "table" then
          cfg = res1
        else
          local ok2, res2 = pcall(vim.lsp.config, {
            name = common.name,
            cmd = common.cmd,
            root_dir = common.root_dir,
            filetypes = common.filetypes,
          })
          if ok2 and type(res2) == "table" then
            cfg = res2
          end
        end

        if type(cfg) == "table" then
          pcall(vim.lsp.start, cfg, { bufnr = bufnr })
          return
        end
      end

      if vim.lsp and vim.lsp.start then
        local ok3 = pcall(vim.lsp.start, {
          name = common.name,
          cmd = common.cmd,
          root_dir = common.root_dir,
          filetypes = common.filetypes,
        }, { bufnr = bufnr })
        if ok3 then return end
      end

      local ok4, lspconfig = pcall(require, "lspconfig")
      if ok4 and lspconfig.sourcekit then
        lspconfig.sourcekit.setup({
          cmd = common.cmd,
          filetypes = common.filetypes,
        })
      end
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "swift", "objc", "objcpp" },
      callback = function(ev) start_sourcekit(ev.buf) end,
    })
  end,
}


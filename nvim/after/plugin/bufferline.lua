local status, bufferline = pcall(require, "bufferline")
if not status then
    print("ERROR bufferline")
    return
end

bufferline.setup({
    highlights = {
        fill = { bg = '#1a1b26' },
        buffer_selected = { bold = true },
        diagnostic_selected = { bold = true },
        info_selected = { bold = true },
        info_diagnostic_selected = { bold = true },
        warning_selected = { bold = true },
        warning_diagnostic_selected = { bold = true },
        error_selected = { bold = true },
        error_diagnostic_selected = { bold = true },
    },
    options = {
        show_close_icon = true,
        diagnostics = 'nvim_lsp',
        max_prefix_length = 8,
    },
})

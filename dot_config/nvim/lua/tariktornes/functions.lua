local M = {}

-- Function to open a file in a new tmux pane (horizontal split)
M.open_file_in_tmux_horizontal = function(file)
    if file then
        vim.fn.system('tmux split-window -h "nvim ' .. file .. '"')
    end
end

-- Function to open a file in a new tmux pane (vertical split)
M.open_file_in_tmux_vertical = function(file)
    if file then
        vim.fn.system('tmux split-window -v "nvim ' .. file .. '"')
    end
end

return M


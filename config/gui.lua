local wezterm = require('wezterm')
local mux = wezterm.mux

return {
   -- 默认启动时最大化窗口
   initial_cols = 300, -- 设置默认列数，尽量较大，以确保最大化
   initial_rows = 48, -- 设置默认行数，尽量较大，以确保最大化
   adjust_window_size_when_changing_font_size = false, -- 禁止更改字体大小时调整窗口大小
   -- -- GUI 启动配置
   -- wezterm.on('gui-startup', function(cmd)
   --    -- 如果有命令行参数，则根据参数调整初始窗口
   --    local args = {}
   --    if cmd then
   --       args = cmd.args
   --    end
   --
   --    -- 设置项目目录，用于 coding workspace
   --    local project_dir = wezterm.home_dir .. '/wezterm'
   --
   --    -- 创建一个窗口和 tab，用于 coding workspace
   --    local tab, build_pane, window = mux.spawn_window({
   --       workspace = 'coding',
   --       cwd = project_dir,
   --       args = args,
   --    })
   --
   --    -- 在上方分割一个 pane，用于编辑器
   --    local editor_pane = build_pane:split({
   --       direction = 'Top',
   --       size = 0.6,
   --       cwd = project_dir,
   --    })
   --
   --    -- 在 build_pane 中执行构建命令
   --    build_pane:send_text('cargo build\n')
   --
   --    -- 创建另一个窗口和 tab，用于 automation workspace
   --    local tab, pane, window = mux.spawn_window({
   --       workspace = 'automation',
   --       args = { 'ssh', 'vault' },
   --    })
   --
   --    -- 启动时激活 coding workspace
   --    mux.set_active_workspace('coding')
   -- end),
}

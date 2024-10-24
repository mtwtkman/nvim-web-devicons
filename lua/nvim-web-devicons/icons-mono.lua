local src = require("nvim-web-devicons.icons-default")

local function make_mono(tbl, color, cterm_color)
  local new_tbl = {}
  for k in pairs(tbl) do
    local orig = tbl[k]
    new_tbl[k] = {
      icon = orig.icon,
      color = color,
      cterm_color = cterm_color,
      name = orig.name,
    }
  end
  return new_tbl
end

local function load(setting)
  local color = setting.color
  local cterm_color = setting.cterm_color

  local icons_by_filename = make_mono(src.icons_by_filename, color, cterm_color)
  local icons_by_file_extension = make_mono(src.icons_by_filename, color, cterm_color)
  local icons_by_operating_system = make_mono(src.icons_by_operating_system, color, cterm_color)
  local icons_by_desktop_environment = make_mono(src.icons_by_desktop_environment, color, cterm_color)
  local icons_by_window_manager = make_mono(src.icons_by_window_manager, color, cterm_color)

  return {
    icons_by_filename = icons_by_filename,
    icons_by_file_extension = icons_by_file_extension,
    icons_by_operating_system = icons_by_operating_system,
    icons_by_desktop_environment = icons_by_desktop_environment,
    icons_by_window_manager = icons_by_window_manager,
  }
end

return {
  load = load,
}

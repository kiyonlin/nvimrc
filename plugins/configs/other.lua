local M = {}

M.notify = function ()
  local present, notify = pcall(require, "notify")

  if present then
    local options = {
      stages = 'fade', -- fade | slide | static | fade_in_slide_out
      timeout = 5000,
      background_colour = '#000000'
    }
    -- replace vim notify
    vim.notify = notify
    vim.notify.setup(options)
    vim.notify_title = function (lvl, title, content)
      title = title or ''
      content = content or ''
      if type(title) ~= "string" or type(content) ~= "string" then
        print("title or content is not string type!")
        return
      end
      vim.notify(content, lvl, {title=title})
    end
    local levels = {"info", "warn", "error"}
    for _, lvl in ipairs(levels) do
      vim[lvl] = function (title,content)
        vim.notify_title(lvl,title,content)
      end
    end
  end
end

return M

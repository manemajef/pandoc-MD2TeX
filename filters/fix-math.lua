-- Pandoc Lua filter to fix KaTeX-style math for LaTeX output
-- Handles:
-- 1. \begin{gather}...\end{gather} in subscripts -> \substack{...}
-- 2. Converts \begin{align} inside DisplayMath to raw LaTeX align block

function Math(el)
  local text = el.text

  -- Replace \begin{gather}...\end{gather} with \substack{...}
  text = text:gsub(
    "\\begin{gather}%s*(.-)%s*\\end{gather}",
    function(content)
      return "\\substack{" .. content:gsub("%s*\\\\%s*", " \\\\ ") .. "}"
    end
  )

  -- If this is DisplayMath containing \begin{align}, convert to raw LaTeX
  if el.mathtype == "DisplayMath" then
    if text:match("^%s*\\begin{align[*]?}") then
      -- Return as raw LaTeX block instead of math
      return pandoc.RawInline("latex", "\n" .. text .. "\n")
    end
  end

  el.text = text
  return el
end

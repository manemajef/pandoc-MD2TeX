-- Save as: ~/.pandoc/filters/he-auto.lua
function Inlines(inlines)
  local result = {}
  local buffer = {}
  
  -- Detect English words (Letters + Numbers)
  local function is_latin(text)
    return text:match("^[A-Za-z0-9]+$")
  end

  local function flush_buffer()
    if #buffer > 0 then
      -- Wrap English words in \textenglish{...}
      -- This forces CMU Serif + LTR direction automatically
      table.insert(result, pandoc.Span(buffer, {lang='en'}))
      buffer = {}
    end
  end

  for i, el in ipairs(inlines) do
    if el.t == 'Str' and is_latin(el.text) then
      table.insert(buffer, el) 
    elseif el.t == 'Space' and #buffer > 0 then
      table.insert(buffer, el) 
    elseif el.t == 'Str' and el.text:match("^[%.,:;?!]+$") and #buffer > 0 then
      flush_buffer()
      table.insert(result, el)
    else
      if #buffer > 0 and buffer[#buffer].t == 'Space' then
         local trailing_space = table.remove(buffer)
         flush_buffer()
         table.insert(result, trailing_space)
      else
         flush_buffer()
      end
      table.insert(result, el)
    end
  end
  flush_buffer()
  return result
end
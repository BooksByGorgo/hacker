-- Adapted from the C++/Go books' callout treatment, without external icons.
-- Preserve the Tip/Trap/Wut label and let long boxes break across pages.
function Div(el)
  if not FORMAT:match("latex") or not el.classes:includes("tip") then
    return nil
  end

  local blocks = pandoc.List({
    pandoc.RawBlock("latex", "\\begin{tcolorbox}[breakable,"
      .. "colback=black!5,colframe=black!20,boxrule=0.4pt,arc=2pt,"
      .. "left=5pt,right=5pt,top=4pt,bottom=4pt,fontupper=\\small]")
  })
  blocks:extend(el.content)
  blocks:insert(pandoc.RawBlock("latex", "\\end{tcolorbox}"))
  return blocks
end

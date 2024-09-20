local cmp = require("cmp")
local cmp_types = require("cmp.types")

local function demote_java_object_methods(entry1, entry2)
  local e1 = entry1.completion_item
  local e2 = entry2.completion_item

  local client = nil
  if entry1.source.source and entry1.source.source.client then
    client = entry1.source.source.client.name
  end

  if client ~= nil and client == "jdtls" then
    if e1.detail and string.match(e1.detail, "Object.") then
      return false
    end
    if e2.detail and string.match(e2.detail, "Object.") then
      return true
    end
  end
end


local function demote_snippet_completions(entry1, entry2)
  local kind1 = entry1:get_kind()
  kind1 = kind1 == cmp_types.lsp.CompletionItemKind.Text and 100 or kind1
  local kind2 = entry2:get_kind()
  kind2 = kind2 == cmp_types.lsp.CompletionItemKind.Text and 100 or kind2
  if kind1 ~= kind2 then
    if kind1 == cmp_types.lsp.CompletionItemKind.Snippet then
      return false
    end
    if kind2 == cmp_types.lsp.CompletionItemKind.Snippet then
      return true
    end
    local diff = kind1 - kind2
    if diff < 0 then
      return true
    elseif diff > 0 then
      return false
    end
  end
end

return {
  priority_weight = 1.0,
  comparators = {
    cmp.config.compare.offset,
    cmp.config.compare.score,
    cmp.config.compare.exact,
    demote_java_object_methods,
    demote_snippet_completions,
    cmp.config.compare.kind,
    cmp.config.compare.sort_text,
    cmp.config.compare.length,
    cmp.config.compare.order,
  },
}

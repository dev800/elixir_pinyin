defprotocol PinyinUtil do
  def spell(string)
  def spell(string, opts)
  def spell(string, opts, fun)
end




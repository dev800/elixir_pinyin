defimpl PinyinUtil, for: BitString do
  @doc ~S"""
  汉字转换成拼音
  ## Examples
      iex> PinyinUtil.spell("龡龢龣龤龥癩")
      "chui he jue xie yu la"
      iex> PinyinUtil.spell("龡龢龣龤龥癩", tone: true)
      "chùi hé júe xíe yù là"
      iex> PinyinUtil.spell("龡龢龣龤龥癩", splitter: "-")
      "chui-he-jue-xie-yu-la"
      iex> PinyinUtil.spell("龡龢龣龤龥癩", [], &String.first/1)
      "c"
  """
  @spec spell(binary) :: binary
  defdelegate spell(string), to: PinyinUtil.String, as: :to_pinyin

  @spec spell(binary, Keyword.t()) :: binary
  defdelegate spell(string, opts), to: PinyinUtil.String, as: :to_pinyin

  @spec spell(binary, Keyword.t(), (binary -> any)) :: any
  defdelegate spell(string, opts, fun), to: PinyinUtil.String, as: :to_pinyin
end

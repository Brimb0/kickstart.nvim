return {
{ 'mrjones2014/smart-splits.nvim' }
-- or use a specific version, or a range of versions using lazy.nvim's version API
{ 'mrjones2014/smart-splits.nvim', version = '>=1.0.0' }
-- to use Kitty multiplexer support, run the post install hook
{ 'mrjones2014/smart-splits.nvim', build = './kitty/install-kittens.bash' }
}

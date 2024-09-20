vim.opt.background = 'dark'
vim.g.colors_name = 'late-night-works'

package.loaded['late-night-works.late-night-works'] = nil
require('lush')(require('lush_theme.late-night-works'))

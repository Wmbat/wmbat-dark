lua << EOF
package.loaded['lush_theme.lush_template'] = nil

-- include our theme file and pass it to lush to apply
lua require('lush')(require('wmbat-dark').setup())
EOF

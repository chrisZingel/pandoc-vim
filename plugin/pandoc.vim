" Maintainer:   Chris Zingel
" Version:      1.0

"Exit quickly when already loaded.
if exists("g:load_vim_pandoc")
  finish
endif

let g:load_vim_pandoc = "true"

" Check for Ruby functionality.
if !has("ruby")
  echohl ErrorMsg
  echon "Sorry, This plugin in ruby online doc requires ruby support."
  finish
endif

function! Pandoc()
let g:current_file = expand('%:p')
  :ruby Pandoc.new( VIM::evaluate('g:current_file')).genereate_pandoc_and_open
  :echo "Completed..."
endfunction

command! Pandoc :call Pandoc()

ruby << EOF
	class Pandoc 
		def initialize(file_name)
      @file_name= file_name 
		end

    def genereate_pandoc_and_open
      print("This can take a while ...")
      system("pandoc -s  --number-sections  -f markdown #{@file_name} -o #{@file_name}.pdf")
      system("open #{@file_name}.pdf")
    end
	end
EOF

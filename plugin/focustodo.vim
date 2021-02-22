function! FocusTODO()
	set sw=4 st=4 ts=4

	function! FindNextNow()
		let @/='\[[c|n]\].*'
		execute "normal! //b+1\<CR>"
	endfunction
	command! FNN call FindNextNow()

	echo ":FNN\tFindNextNow()"

	function! FindNextOnDeck()
		let @/='\[ \].*'
		execute "normal! //b+1\<CR>"
	endfunction
	command! FNO call FindNextOnDeck()

	echo ":FNO\tFindNextOnDeck()"
endfunction
command! FocusTODO call FocusTODO()

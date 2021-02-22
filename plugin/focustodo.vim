function! FocusTODO()
	set sw=4 st=4 ts=4

	function! FindNextNow()
		let @/='\[[c|n]\].*'
		set hlsearch
		call feedkeys("//b+1\<CR>")
	endfunction
	command! FNN call FindNextNow()

	function! FindNextOnDeck()
		let @/='\[ \].*'
		set hlsearch
		call feedkeys("//b+1\<CR>")
	endfunction
	command! FNO call FindNextOnDeck()

	function! FindNextDone()
		let @/='\[x\].*'
		set hlsearch
		call feedkeys("//b+1\<CR>")
	endfunction
	command! FNX call FindNextDone()
endfunction
command! FocusTODO call FocusTODO()

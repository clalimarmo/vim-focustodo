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

	function! FindNextRoot()
		let @/='$\[.\].*'
		set hlsearch
		call feedkeys("//b+1\<CR>")
	endfunction
	command! FNR call FindNextRoot()

	function! FindNextCustom(marker)
		let @/='\[[' . a:marker . ']\].*'
		set hlsearch
		call feedkeys("//b+1\<CR>")
	endfunction
	command! -nargs=1 FN call FindNextCustom(<f-args>)

	function! TaskOnDeck()
		call feedkeys("o[ ]	")
	endfunction
	command! TO call TaskOnDeck()

	function! TaskNow()
		call feedkeys("o[n]	")
	endfunction
	command! TN call TaskNow()
endfunction
command! FocusTODO call FocusTODO()

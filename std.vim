if exists("b:current_syntax")
    finish
endif


syntax keyword main STAAD JOB END MEMBER INCIDENCES
highlight link main Keyword

syn match comment "\*.*" 
highlight link comment Keyword



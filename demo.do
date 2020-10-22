use https://stats.idre.ucla.edu/stat/data/logit2-2, clear

logit y i.f i.h cv1
estimates store main
logit y i.f##i.h cv1
estimates store inter
lrtest main inter 

// wald test
test 1.f#1.h 

lincom 1.f + 1.f#1.h, eform

lincom 1.h + 1.f#1.h, eform

lincom 1.f, eform

lincom 1.h, eform

# .Rprofile -- commands to execute at the beginning of each R session
#
# You can use this file to load packages, set options, etc.
#
# NOTE: changes in this file won't be reflected until after you quit
# and start a new session
#

library(devtools)

if(interactive()) {
   library(colorout)
   #options(vimcom.verbose = 1) # optional
   library(nvimcom)
   # Use either Vim or GVim as text editor for R:
   if(nchar(Sys.getenv("DISPLAY")) > 1)
       options(editor = 'gvim -f -c "set ft=r"')
   else
       options(editor = 'vim -c "set ft=r"')
   # Load the colorout library:
   if(Sys.getenv("TERM") != "linux" && Sys.getenv("TERM") != ""){
       # Choose the colors for R output among 256 options.
       # You should run show256Colors() and help(setOutputColors256) to
       # know how to change the colors according to your taste:
       setOutputColors256(verbose = FALSE)
   }
}

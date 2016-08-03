# Turtl-api Arch Linux packagebuild

## Install
git clone XXXX
makepkg -fi
Wait for setup scripts to download run.
 After setup scripts completes:
 Start the default RethinkDB service using:
 systemctl start rethinkdb@default
 
 Then start turtlapi
 systemctl start turtlapi
 
 The first run will trigger a set of quicklisp downloads. Follow the progress by running:
 journalctl -fu turtlapi

 Connect to your new turtlapi server using the client from:
 turtl.it 

 To enable both service run:

 systemctl enable rethinkdb@default
 systemctl enable turtlapi

I recommend setting up an nginx reverse proxy with https for external use.

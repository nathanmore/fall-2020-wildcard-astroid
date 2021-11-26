-> BEGINNING

=== BEGINNING ===
#name boss
Now that you've been updated by Bob you should know where to begin.
This is a bad look for the station, solve this case as quickly as possible.
Are you ready for this?
#name player
+Yes 
     -> Ready
+No 
     -> NotReady

=== Ready ===
#transition stage1
-> END

=== NotReady ===
#name boss
Well don't take too long. I need you on this case ASAP.
     -> DONE

=== DONE ===
#name boss
Are you ready?
+Yes 
     -> Ready
+No 
     -> NotReady
" Vim syntax file

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match offlineimapComment /#.*$/ contains=@Spell
syn match offlineimapGeneral /\[\(general\)\]/
syn match offlineimapAccount /\[\(Account\).*\]/
syn match offlineimapRepository /\[\(Repository\).*\]/

syn keyword offlineimapOption
      \ metadata
      \ accounts
      \ maxsyncaccounts
      \ ui
      \ ignore
      \ pythonfile
      \ socktimeout
      \ fsync
      \ enabled
      \ filename
      \ header
      \ peritem
      \ sep
      \ footer
      \ incremental
      \ sort_keyfunc
      \ localrepository
      \ remoterepository
      \ autorefresh
      \ quick
      \ presynchook
      \ postsynchook
      \ newmail_hook
      \ status_backend
      \ maxsize
      \ maxage
      \ maxage
      \ maildir
      \ synclabels
      \ labelsheader
      \ ignorelabels
      \ filterheaders
      \ proxy
      \ type
      \ localfolders
      \ sep
      \ startdate
      \ restoreatime
      \ utime_from_header
      \ filename_use_mail_timestamp
      \ gcustomflag_x
      \ g1234567890
      \ customflag_a
      \ customflag_b
      \ customflag_c
      \ customflag_d
      \ type
      \ type
      \ remotehosteval
      \ remoteporteval
      \ remoteusereval
      \ remotepasseval
      \ remotehost
      \ ssl
      \ sslclientcert
      \ sslclientkey
      \ sslcacertfile
      \ gIf
      \ cert_fingerprint
      \ ssl_version
      \ tls_level
      \ remoteport
      \ remoteuser
      \ remote_identity
      \ auth_mechanisms
      \ gwith
      \ oauth2_client_id
      \ oauth2_client_secret
      \ oauth2_refresh_token
      \ gremotepass
      \ gremotepassfile
      \ gpreauthtunnel
      \ gremotepasseval
      \ gremoteusereval
      \ preauthtunnel
      \ transporttunnel
      \ gwith
      \ reference
      \ decodefoldernames
      \ idlefolders
      \ usecompression
      \ maxconnections
      \ holdconnectionopen
      \ keepalive
      \ expunge
      \ subscribedonly
      \ nametrans
      \ nametrans
      \ dynamic_folderfilter
      \ folderfilter
      \ folderfilter
      \ folderfilter
      \ folderfilter
      \ folderincludes
      \ createfolders
      \ foldersort
      \ readonly
      \ ghttp
      \ type
      \ remoteuser
      \ trashfolder

syn match offlineimapNumber /\<\(\d\+$\)/
syn match offlineimapBool /\<\(true\|false\)\>/
syn match offlineimapActivate /\<\(yes\|no\)\>/

" Only except certain values for specific options
syn match offlineimapWrongOption /\<\(maxsyncaccounts\|socktimeout\|autorefresh\|quick\|maxconnections\|remoteport\)\s=\s\(\d\+$\)\@!.*$/
syn match offlineimapWrongOption /\<fsync\s=\s\(true$\|false$\)\@!.*$/
syn match offlineimapWrongOption /\<\(realdelete\|ssl\)\s=\s\(yes$\|no$\)\@!.*$/
syn match offlineimapWrongOption /\<status_backend\s=\s\(plain$\|sqlite$\)\@!.*$/
syn match offlineimapWrongOption /\<type\s=\s\(Maildir$\|Gmail$\|IMAP$\)\@!.*$/
syn match offlineimapWrongOption /\<ui\s=\s\(TTY.TTYUI$\|basic$\|blinkenlights$\|quiet\)\@!.*$/

syn match offlineimapWrongOptionValue /\S* \zs.*$/ contained containedin=offlineimapWrongOption

highlight default link offlineimapComment Comment
highlight default link offlineimapGeneral Function
highlight default link offlineimapAccount Function
highlight default link offlineimapRepository Function
highlight default link offlineimapOption Type
highlight default link offlineimapWrongOption offlineimapOption
highlight default link offlineimapWrongOptionValue Error
highlight default link offlineimapNumber Number
highlight default link offlineimapBool Constant
highlight default link offlineimapActivate Constant


let b:current_syntax = "offlineimap"

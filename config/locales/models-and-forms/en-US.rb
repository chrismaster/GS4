#OPTIMIZE Add pin_change.(?) `./script/gs4cmd resources`: "translation missing: de.activerecord.models.pin_change". See app/models/pin_change.rb.

{ :"en-US" => {
	
	:activerecord => {
		
		:models => {
			:user                          => "User",
			:call_forward                  => "Call forward",
			:call_log                      => "Call log entry",
			:call_queue                    => "Call queue",
			:conference                    => "Conference room",
			:extension                     => "Extension",
			:fax_document                  => "Fax document",
			:global_contact                => "Contact (system-wide)",
			:personal_contact              => "Contact (personal)",
			:node                          => "PBX node",
			:sip_proxy                     => "SIP proxy",
			:sip_server                    => "SIP server",
			:voicemail_server              => "Voicemail server",
			:phone                         => "Phone",
			:phone_model                   => "Phone model",
			:manufacturer                  => "Phone manufacturer",
			:sip_account                   => "SIP account",
			:pin_change                    => "(SIP account: change voicemail PIN)",  #OPTIMIZE See app/models/pin_change.rb
			:configuration                 => "Configuration",
			:authentication                => "Authentication",
			:call_forward_reason           => "Call forward case",
			:call_queue_to_extension       => "Call queue to extension",
			:codec                         => "Codec",
			:conference_to_extension       => "Conference room to extension",
			:location                      => "SIP location",
			:oui                           => "Ethernet OUI",
			:phone_key                     => "Phone key",
			:phone_key_function_definition => "Phone key function definition",
			:phone_key_to_function_mapping => "Phone key to function mapping",
			:phone_model_codec             => "Phone model codec",
			:phone_model_key               => "Phone model key",
			:phone_model_mac_address       => "Phone model MAC address",
			:provisioning_log_entry        => "Provisioning log entry",
			:pua                           => "Presence user agent",
			:reboot_request                => "Reboot request",
			:sip_account_codec             => "SIP account codec",
			:sip_account_to_extension      => "SIP account to extension",
			:subscriber                    => "SIP subscriber",
			:version                       => "Version",
			:network_setting               => "Network settings",
			:sip_gateway                   => "Gateway",
			:user_to_extension             => "User to extension",
			:dialplan_pattern              => "Dialplan pattern",
			:dialplan_route                => "Dialplan route",
			:cdr                           => "Call detail record",
			
		},
		
		:attributes => {
			:user => {
				:username  => "Username",
				:password  => "Password",
				:password_confirmation => "Password confirmation",
				:sn        => "Lastname",
				:gn        => "Firstname",
				:email     => "E-mail address",
				:role      => "Role",
			},
			:authentication => {
				:user      => "User",
				:user_id   => "User ID",
				:provider  => "Provider",
				:uid       => "UID",
			},
			:call_forward => {
				:sip_account            => "SIP account",
				:sip_account_id         => "SIP account ID",
				:source                 => "Source",
				:call_forward_reason    => "Case",
				:call_forward_reason_id => "Call forward reason ID",
				:call_timeout           => "Timeout",
				:destination            => "Destination",
				:active                 => "Active",
			},
			:call_forward_reason => {
				:value    => "Wert",
			},
			:call_log => {
				:sip_account       => "SIP account",
				:sip_account_id    => "SIP account ID",
				:source            => "Caller number",
				:source_name       => "Caller name",
				:destination       => "Destination number",
				:destination_name  => "Destination name",
				:call_type         => "Call type",
				:disposition       => "Disposition",
				:forwarded_to      => "Forwarded to",
				:uuid              => "Identifier",
			},
			:call_queue => {
				:name  => "Name",
				:uuid  => "Identifier",
			},
			:call_queue_to_extension => {
				:call_queue    => "Call queue",
				:call_queue_id => "Call queue ID",
				:extension     => "Extension",
				:extension_id  => "Extension ID",
			},
			:codec => {
				:name  => "Name",
			},
			:conference => {
				:name    => "Name",
				:pin     => "Password",
				:uuid    => "Identifier",
				:user    => "User",                            
				:user_id => "User ID",
			},
			:conference_to_extension => {
				:conference     => "Conference room",
				:conference_id  => "Conference room ID",
				:extension      => "Extension",
				:extension_id   => "Extension ID",
				:position       => "Position",
			},
			:extension => {
				:extension    => "Extension",
				:destination  => "Destination",
				:active       => "Active",
				:type         => "Type",
			},
			:fax_document => {
				:destination  => "Destination",
				:file         => "File",
				:raw_file     => "Raw file",
				:outgoing     => "Outbound",
				:received     => "Received",
				:sent         => "Sent",
				:title        => "Title",
				:user         => "User",
				:user_id      => "User ID",
			},
			:global_contact => {
				:lastname        => "Lastname",
				:firstname       => "Firstname",
				:phone_private   => "Phone private",
				:phone_business  => "Phone business",
				:phone_mobile    => "Phone mobile",
				:fax_private     => "Fax private",
				:fax_business    => "Fax business",
			},
			:location => {
				:callid        => "Call ID",
				:cflags        => "Contact flags",
				:contact       => "Contact",
				:cseq          => "CSeq",
				:domain        => "Domain",
				:expires       => "Expires",
				:flags         => "Flags",
				:last_modified => "Last modified",
				:methods       => "Methods",
				:path          => "Path",
				:q             => "Q",
				:received      => "Received",
				:socket        => "Socket",
				:user_agent    => "User agent",
				:username      => "Username",
			},
			:personal_contact => {
				:user            => "User",
				:user_id         => "User ID",
				:lastname        => "Lastname",
				:firstname       => "Firstname",
				:phone_private   => "Phone private",
				:phone_business  => "Phone business",
				:phone_mobile    => "Phone mobile",
				:fax_private     => "Fax private",
				:fax_business    => "Fax business",
			},
			:node => {
				:management_host => "Management host",
				:management_port => "Management port",
				:title => "Title",
			},
			:oui => {
				:manufacturer    => "Manufacturer",
				:manufacturer_id => "Manufacturer ID",
				:value           => "Value",
			},
			:sip_proxy => {
				:host            => "SIP host",
				:port            => "SIP port",
				:is_local        => "Is on this PBX node",
				:last_sip_proxy  => "Take over accounts",
			},
			:sip_server => {
				:host            => "SIP host",
				:port            => "SIP port",
				:is_local        => "Is on this PBX node",
				:last_sip_server => "Take over accounts",
			},
			:voicemail_server => {
				:host            => "SIP host",
				:port            => "SIP port",
				:is_local        => "Is on this PBX node",
			},
			:phone => {
				:mac_address    => "MAC address",
				:phone_model    => "Model",
				:phone_model_id => "Phone model ID",
				:ip_address     => "IP address",
				:http_user      => "HTTP username",
				:http_password  => "HTTP password",
				:last_ip_address => "Last IP address",
			},
			:phone_key => {
				:label                             => "Label",
				:phone_key_function_definition     => "Phone key function definition",
				:phone_key_function_definition_id  => "Phone key function definition ID",
				:phone_model_key                   => "Phone model key",
				:phone_model_key_id                => "Phone model key ID",
				:sip_account                       => "SIP account",
				:sip_account_id                    => "SIP account ID",
				:value                             => "Value",
			},
			:phone_key_function_definition => {
				:name             => "Name",
				:regex_validation => "Regular expression for validation",
				:type_of_class    => "Type of class",
			},
			:phone_key_to_function_mapping => {
				:phone_key_function_definition     => "Phone key function definition",
				:phone_key_function_definition_id  => "Phone key function definition ID",
				:phone_model_key                   => "Phone model key",
				:phone_model_key_id                => "Phone model key ID",
			},
			:phone_model => {
				:name  => "Name",
				:url   => "URL",
				:manufacturer     => "Manufacturer",
				:manufacturer_id  => "Manufacturer ID",
				:default_http_user      => "Default HTTP user",
				:default_http_password  => "Default HTTP password",
				:max_number_of_sip_accounts => "Max. SIP accounts",
				:number_of_keys => "Number of keys",
				:ssl => "SSL",
				:http_port => "HTTP port",
				:reboot_request_path => "Reboot HTTP request path",
				:http_request_timeout => "HTTP request timeout",
				:random_password_length => "Password length",
				:random_password_consists_of => "Chars in password",
			},
			:phone_model_codec => {
				:codec          => "Codec",
				:codec_id       => "Codec ID",
				:phone_model    => "Phone model",
				:phone_model_id => "Phone model ID",
				:position       => "Position",
			},
			:phone_model_key => {
				:name           => "Name",
				:phone_model    => "Phone model",
				:phone_model_id => "Phone model ID",
				:position       => "Position",
			},
			:phone_model_mac_address => {
				:phone_model    => "Phone model",
				:phone_model_id => "Phone model ID",
				:starts_with    => "Starts with",
			},
			:provisioning_log_entry => {
				:phone_id  => "Phone ID",
				:memo      => "Memo",
				:succeeded => "Succeeded",
			},
			:pua => {
				:call_id         => "SIP Call-ID",
				:contact         => "Contact",
				:cseq            => "CSeq",
				:desired_expires => "Desired expires",
				:etag            => "Etag",
				:event           => "Event",
				:expires         => "Expires",
				:extra_headers   => "Extra Headers",
				:flag            => "Flags",
				:from_tag        => "From tag",
				:pres_id         => "Presence ID",
				:pres_uri        => "Presence URI",
				:record_route    => "Record route",
				:remote_contact  => "Remote contact",
				:to_tag          => "To tag",
				:tuple_id        => "Tuple id",
				:version         => "Version",
				:watcher_uri     => "Watcher URI",
			},
			:reboot_request => {
				:end        => "End",
				:phone      => "Phone",
				:phone_id   => "Phone ID",
				:start      => "Start",
				:successful => "Successful",
			},
			:manufacturer => {
				:name       => "Name",
				:ieee_name  => "IEEE name",
				:url        => "URL",
			},
			:sip_account => {
				:user                => "User",
				:user_id             => "User ID",
				:caller_name         => "Caller name",
				:auth_name           => "SIP username",
				:password            => "SIP password",
				:realm               => "SIP realm",
				:sip_server          => "SIP server",
				:sip_server_id       => "SIP server ID",
				:sip_proxy           => "SIP proxy",
				:sip_proxy_id        => "SIP proxy ID",
				:voicemail_server    => "Voicemail server",
				:voicemail_server_id => "Voicemail server ID",
				:voicemail_pin       => "Voicemail password",
				:phone               => "Phone",
				:phone_id            => "Phone ID",
				:position            => "Position",
				
				:voicemail_pin_old   => "Current voicemail password",
				:voicemail_pin_confirmation => "Voicemail password confirmation",
			},
			:sip_account_codec => {
				:codec          => "Codec",
				:codec_id       => "Codec ID",
				:sip_account    => "SIP account",
				:sip_account_id => "SIP account ID",
				:position       => "Position",
			},
			:sip_account_to_extension => {
				:sip_account    => "SIP account",
				:sip_account_id => "SIP account ID",
				:extension      => "Extension",
				:extension_id   => "Extension ID",
				:position       => "Position",
			},
			:subscriber => {
				:datetime_created  => "Creation date",
				:datetime_modified => "Modification date",
				:domain            => "Domain",
				:email_address     => "E-mail address",
				:ha1               => "Ha1",
				:ha1b              => "Ha1b",
				:password          => "Password",
				:rpid              => "Remote-Party-ID",
				:username          => "Username",
			},
			:version => {
				:table_name    => "Table name",
				:table_version => "Table version",
			},
			:configuration => {
				:name  => "Name",
				:value => "Value",
			},
			:network_setting => {
				:ip_address         => "IP address",
				:netmask            => "Netmask",
				:gateway            => "Default gateway",
				:name_server        => "DNS server",
				:dhcp_range_start   => "First available DHCP address",
				:dhcp_range_end     => "Last available IP address",
				:dhcp_client        => "Obtain IP address automatically",
				:start_dhcp_server  => "Start built-in DHCP server",
				:interface          => "Network interface",
			},
			:sip_gateway => {
				:host           => "Host",
				:port           => "Port",
				:realm          => "Realm",
				:username       => "Username",
				:password       => "Password",
				:from_user      => "“From” user",
				:from_domain    => "“From” domain",
				:register       => "Register",
				:reg_transport  => "Reg. transport",
				:expire         => "Reg. expiration",
			},
			:user_to_extension => {
				:user          => "User",
				:user_id       => "User ID",
				:extension     => "Extension",
				:extension_id  => "Extension ID",
			},
			:dialplan_pattern => {
				:name     => "Description",
				:pattern  => "Pattern",
			},
			:dialplan_route => {
				:eac                  => "EAC",
				:dialplan_pattern     => "Pattern",
				:dialplan_pattern_id  => "Pattern ID",
				:pattern              => "Pattern",
				:pattern_id           => "Pattern ID",
				:user                 => "User",
				:user_id              => "User ID",
				:sip_gateway          => "Gateway",
				:sip_gateway_id       => "Gateway ID",
				:name                 => "Description",
				:position             => "Position",
			},
			:cdr => {
				:caller_id_name      => "Caller name",
				:caller_id_number    => "Caller",
				:destination_number  => "Destination",
				:context             => "Context",
				:start_stamp         => "Call start",
				:answer_stamp        => "Answer time",
				:end_stamp           => "Call end",
				:duration            => "Duration (call)",
				:billsec             => "Bill. duration",
				:hangup_cause        => "Q.850 hangup cause",
				:uuid                => "UUID",
				:bleg_uuid           => "UUID B",
				:account_code        => "Account",
			},
			
		},
	},
	
	:activemodel => {
		:models => {
			:email_configuration => "E-Mail configuration",
		},
		:attributes => {
			:email_configuration => {
				:smarthost_hostname   => "Smarthost host",
				:smarthost_port       => "Smarthost port",
				:smarthost_domain     => "Smarthost domain",
				:smarthost_username   => "Smarthost username",
				:smarthost_password   => "Smarthost password",
				:smarthost_authentication => "Smarthost authentication method",
				:smarthost_enable_starttls_auto => "Smarthost auto-StartTLS",
				:mailserver_hostname  => "Mail server host",
				:mailserver_port      => "Mail server port",
				:mailserver_username  => "Mail server username",
				:mailserver_password  => "Mail server password",
				:fax_send_mail        => "Send fax documents via E-mail",
				:fax_pop3             => "Receive fax documents via e-mail",
			},
		},
	},
	
	:simple_form => {
		:hints => {
			:user => {
				:username => "The username serves to log in to the web GUI.",
				:password => "The password serves to log in to the web GUI.",
				:password_confirmation => "Repeat the password to avoid typos.",
				:sn => "Last name / surname / family name resp. company name",
				:gn => "First name / given name",
				:email => "The e-mail address of this user.",
				:role => "The user role dictates the permissions of this user account. Normal users must be “user”. Users with role “admin” can administrate the PBX system but do not get the normal user menu. User with role “CDR admin” – contrary to administrators – are allowed to see call logs, i.e. personally identifiable information. The first account you create has to be an administrator; it doesn't serve as a normal user.",
			},
			:authentication => {
				# Authentications are currently not edited, so we don't need hints in the form.
			},
			:call_forward => {
				:sip_account => "The SIP account which this call forward rule belongs to.",
				:sip_account_id => "Relation to SipAccount",
				:source => "Caller number for which this call forward should be valid. Leave empty for call from any number.",
				:call_forward_reason => "The case for which this call forward should be valid.",
				:call_forward_reason_id => "Relation to CallForwardReason",
				:call_timeout => "For a call forward on no answer: timeout in seconds.",
				:destination => "The call forward's destination number. To forward calls to voicemail enter “voicemail”. To deflect calls leave the destination empty; this should usually only be done for calls from a specific caller number (blacklist)",
				:active => "Only active call forwarding rules will be followed. This way you can easily deactivate call forwards temporarily without having to delete them.",
			},  
			:call_forward_reason => {
				:value => "Call forward case, e.g. busy, noanswer, offline, always, assistant",
			},                   
			:call_log => {
				:call_type => "Type of the call, e.g. in, out",
				:destination => "Callee indentification number",
				:destination_name => "Callee indentification name",
				:disposition => "Call disposition, e.g. answered, forwarded, noanswer",
				:forwarded_to => "To whom the call was being forwarded",
				:sip_account => "Relation to SipAccount",
				:sip_account_id => "Relation to SipAccount",
				:source => "Caller ID number",
				:source_name => "Caller ID name",
				:uuid => "Universally unique identifier of the call",
			},
			:call_queue => {
				:name => "A title of your choice.",
				:uuid => "Is used for the system-internal identification and should usually not be changed.",
			},
			:call_queue_to_extension => {
				:call_queue    => "Call queue",
				:call_queue_id => "Relation to CallQueue",
				:extension     => "Extension",
				:extension_id  => "Relation to Extension",
			},
			:codec => {
				:name  => "Name of the codec, e.g. alaw, ulaw, gsm",
			},
			:conference => {
				:name    => "A title of your choice.",
				:pin     => "A numeric password that callers have to enter in order to enter this conference room.",
				:uuid    => "Is used for the system-internal identification and should usually not be changed.",
				:user    => "The user which this conference belongs to.",
				:user_id => "Relation to User"
			},
			:conference_to_extension => {
				:conference     => "Relation to the conference room",
				:conference_id  => "Relation to Conference",
				:extension      => "Relation to the extension",
				:extension_id   => "Relation to Extension",
				:position       => "Position in list",
			},
			:extension => {
				:extension => "The extension that callers have to dial.",
				:destination => "The destination is usually the identifier of a SIP account, or conference or call queue. In these cases this field has automatically been filled.",
				:active => "Only active extensions will be considered in the dial plan. This way you can easily deactivate extensions temporarily without having to delete them.",
				:type => "How the extension will be used",
			},
			:fax_document => {
				:destination => "The destination number.",
				:file => "The PDF file you want to send.", 
				:raw_file => "The raw fax G3 data file.",
				:outgoing => "Is this fax to be sent?",
				:received => "Time and date this fax was received.",
				:sent => "Time and date this fax was sent.",
				:title => "Document title.",
				:user => "User",
				:user_id => "User ID",
			},
			:global_contact => {
				:lastname => "Last name / surname / family name resp. company name",
				:firstname => "First name / given name",
				:phone_private => "Private phone number",
				:phone_business => "Business phone number",
				:phone_mobile => "Cell phone number",
				:fax_private => "Private fax number",
				:fax_business => "Business fax number",               
			},
			:location => {
				:callid        => "Call-ID header field",
				:cflags        => "The contact flags",
				:contact       => "Contact header field",
				:cseq          => "CSeq header field",
				:domain        => "Domain name",
				:expires       => "Date and time the entry expires",
				:flags         => "Flags",
				:last_modified => "Date and time the entry was modified",
				:methods       => "Methods the contact accepts",
				:path          => "Path header value",
				:q             => "Q-Value used for preferential routing",
				:received      => "Received IP:port",
				:socket        => "Connection socket",
				:user_agent    => "User-Agent header field",
				:username      => "SIP username",
			},
			:personal_contact => {
				:user => "The user which this contact belongs to.",
				:user_id => "Relation to User",
				:lastname => "Last name / surname / family name resp. company name",
				:firstname => "First name / given name",
				:phone_private => "Private phone number",
				:phone_business => "Business phone number",
				:phone_mobile => "Cell phone number",
				:fax_private => "Private fax number",
				:fax_business => "Business fax number",
			},
			:node => {
				:management_host => "Host name / IP address. Do not use “localhost” or “127.0.0.1” here, unless this is the only node in a 1-server setup.",
				:management_port => "Port number",
				:title => "a title of your choice",
			},
			:oui => {
				:manufacturer    => "Device manufacturer",
				:manufacturer_id => "Relation to Manufacturer",
				:value           => "Ethernet OUI (Organizationally unique identifier)",
			},
			:sip_proxy => {
				:host => "Domain name, host name or IP address for SIP connections. Must be reachable from the phones. Do not use “localhost” or “127.0.0.1” here. In the most basic setup use the IP address of this server.",
				:port => "Port number for SIP connections. You should usually not enter a port in order to use the default port.",
				:is_local => "Defines whether this PBX node is responsible for this SIP proxy service.",
				:last_sip_proxy => "If required you can migrate accounts from another server to this one.",
			},
			:sip_server => {
				:host => "Domain name, host name or IP address for SIP connections. Must be reachable from the phones. Do not use “localhost” or “127.0.0.1” here. In the most basic setup use the IP address of this server.",
				:port => "Port number for SIP connections. You should usually not enter a port in order to use the default port.",
				:is_local => "Defines whether this PBX node is responsible for this SIP domain.",
				:last_sip_server => "If required you can migrate accounts from another server to this one.",
			},
			:voicemail_server => {
				:host => "Domain name, host name or IP address for SIP connections. Must be reachable from the phones. Do not use “localhost” or “127.0.0.1” here. In the most basic setup use the IP address of this server.",
				:port => "Port number for SIP connections. You should usually not enter a port in order to use the default port.",
				:is_local => "Defines whether this PBX node is responsible for this voicemail service.",
			},
			:phone => {
				:mac_address    => "The MAC address (Media Access Control address) of this phone. You will usually find it printed on the bottom side of the phone or via a menu on the phone's display.",
				:phone_model    => "The model of this handset.",
				:phone_model_id => "Relation to PhoneModel",
				:ip_address     => "The phone's current IP address. You will usually find it via a menu on the phone's display.",
				:http_user      => "The current HTTP username for the phone's integrated web server.",
				:http_password  => "The current HTTP password for the phone's integrated web server.",
				:last_ip_address => "Last known IP address of the phone",
			},
			:phone_key => {
				:label                             => "Text to be displayed next to the specific key",
				:phone_key_function_definition     => "Relation to the phone key function definition",
				:phone_key_function_definition_id  => "Relation to PhoneKeyFunctionDefinition",
				:phone_model_key                   => "Relation to the phone model key",
				:phone_model_key_id                => "Relation to PhoneModelKey",
				:sip_account                       => "Relation to the SIP account",
				:sip_account_id                    => "Relation to SIP Account",
				:value                             => "Key value",
			},
			:phone_key_function_definition => {
				:name             => "Name of the function definition",
				:regex_validation => "Regular expression to validate the phone key value",
				:type_of_class    => "Type of class the phone key value belongs to",
			},
			:phone_key_to_function_mapping => {
				:phone_key_function_definition     => "Relation to the phone key function definition",
				:phone_key_function_definition_id  => "Relation to PhoneKeyFunctionDefinition",
				:phone_model_key                   => "Relation to the phone model key",
				:phone_model_key_id                => "Relation to PhoneModelKey",
			},
			:phone_model => {
				:name => "A title for this phone model",
				:url => "The manufacturer's URL with further information about this phone model",
				:manufacturer => "The manufacturer of this phone model",
				:manufacturer_id => "Relation to Manufacturer",
				:default_http_user => "Default value of the HTTP username for the phone's integrated web server",
				:default_http_password => "Default value of the HTTP password for the phone's integrated web server",
				:max_number_of_sip_accounts => "The maximum number of SIP accounts supported by this phone model",
				:number_of_keys => "The number of provisionable soft-keys",
				:ssl => "SSL encryption (HTTPS)",
				:http_port => "The port for HTTP connections. Leave empty to use the default port (which is 80 for HTTP, 443 for HTTPS).",
				:reboot_request_path => "HTTP path to trigger a reboot on the phone",
				:http_request_timeout => "Timeout in seconds for HTTP requests to the phone",
				:random_password_length => "Length of randomly generated passwords",
				:random_password_consists_of => "The characters in randomly generated passwords which the phone supports",
			},
			:phone_model_codec => {
				:codec          => "Relation to the codec",
				:codec_id       => "Relation to Codec",
				:phone_model    => "Relation to the phone model",
				:phone_model_id => "Relation to PhoneModel",
				:position       => "Position in list",
			},
			:phone_model_key => {
				:name           => "Name of the Key",
				:phone_model    => "Relation to the phone model",
				:phone_model_id => "Relation to PhoneModel",
				:position       => "Position on the keypad",
			},
			:phone_model_mac_address => {
				:phone_model    => "Relation to the phone model",
				:phone_model_id => "Relation to PhoneModel",
				:starts_with    => "The MAC address starts with ...",
			},
			:provisioning_log_entry => {
				:phone     => "Relation to the phone",
				:phone_id  => "Relation to Phone",
				:memo      => "The log entry",
				:succeeded => "Provisioning was successful?",
			},
			:pua => {
				:call_id         => "Call-ID",
				:contact         => "Contact value",
				:cseq            => "CSeq value",
				:desired_expires => "Desired expiration",
				:etag            => "Etag value",
				:event           => "Event value",
				:expires         => "Expiration value",
				:extra_headers   => "Extra headers",
				:flag            => "Flags value",
				:from_tag        => "From value",
				:pres_id         => "Presence ID value",
				:pres_uri        => "Presence URI",
				:record_route    => "Record route value",
				:remote_contact  => "Remote contact",
				:to_tag          => "To value",
				:tuple_id        => "Tuple ID value",
				:version         => "Version",
				:watcher_uri     => "Watcher URI",
			},
			:reboot_request => {
				:end        => "Date and time the reboot was finished",
				:phone      => "Relation to the phone",
				:phone_id   => "Relation to Phone",
				:start      => "Date and time the reboot was issued",
				:successful => "Was the reboot request successful?",
			},
			:manufacturer => {
				:name => "a name of your choice",
				:ieee_name => "Name of the Ethernet vendor as registered with the IEEE. It's important to use the exact name (incl. upper-/lowercase) as specified in http://standards.ieee.org/develop/regauth/oui/oui.txt .",
				:url => "URL to the vendor's website",
			},
			:sip_account => {
				:user => "The user account which this SIP account belongs to.",
				:user_id => "Relation to User",
				:caller_name => "The caller name of this SIP account.",
				:auth_name => "The SIP username is used to authenticate the SIP account. You should usually use the randomly generated username. It will automatically be provisioned onto the respective phone.",
				:password => "The SIP password is used to authenticate the SIP account. You should usually use the randomly generated password. It will automatically be provisioned onto the respective phone.",
				:realm => "The SIP realm is (just as with HTTP) a name for the authentication area. For best compatibility with verious phones the realm should be the same as the SIP server (resp. SIP domain).",
				:sip_server => "The SIP server resp. SIP domain.",
				:sip_server_id => "Relation to SipServer",
				:sip_proxy => "The SIP proxy to which the phone establishes the IP connection.",
				:sip_proxy_id => "Relation to SipProxy",
				:voicemail_server => "The voicemail server responsible for this SIP account.",
				:voicemail_server_id => "Relation to VoiceMailServer",
				:voicemail_pin => "A numerical password that the user has to enter in order to listen to voicemail messages for this SIP account.",
				:phone => "The phone onto which this SIP account should be provisioned.",
				:phone_id => "Relation to Phone",
				:position => "Position in liste",
				
				:voicemail_pin_old   => "Voicemail password currently in use",
				:voicemail_pin_confirmation => "The voicemail password and confirmation password must match",
			},
			:sip_account_codec => {
				:codec          => "Relation to the codec",
				:codec_id       => "Relation to Codec",
				:sip_account    => "Relation to the SIP account",
				:sip_account_id => "Relation to SipAccount",
				:position       => "Position in list",
			},
			:sip_account_to_extension => {
				:sip_account    => "Relation to the SIP account",
				:sip_account_id => "Relation to SipAccount",
				:extension      => "Relation to the extension",
				:extension_id   => "Relation to Extension",
				:position       => "Position in list",
			},
			:subscriber => {
				:datetime_created  => "Date and time the entry was created",
				:datetime_modified => "Date and time the entry was modified",
				:domain            => "Domain name",
				:email_address     => "E-mail address of the subscriber",
				:ha1               => "Ha1 hash value",
				:ha1b              => "Ha1b hash value",
				:password          => "Password of the subscriber",
				:rpid              => "Remote-Party-ID of the subscriber",
				:username          => "SIP username of the subscriber",
			},
			:version => {
				:table_name    => "Name of the database table",
				:table_version => "Version of the database table",
			},
			:configuration => {
				:name  => "Configuration key",
				:value => "Configuration value",
			},
			:network_setting => {
				:ip_address => "IP address of the server. Can NOT be changed afterwards!",
				:netmask => "",
				:gateway => "",
				:name_server => "",
				:dhcp_range_start => "",
				:dhcp_range_end => "",
				:dhcp_client => "IP address will be obtained from an existing DHCP server. Can NOT be changed afterwards!",
				:start_dhcp_server => "",
				:interface => "",
			},
			:sip_gateway => {
				:host           => "The hostname resp. domain. For an internal media gateway you can usually use the IP address.",
				:port           => "The port number. Without a port the host will be treatet as a domain name and SIP mechanisms to determine the default port apply (DNS SRV record lookup). With a port the host will be treatet as a hostname resp. IP address (no DNS SRV record lookup). For an internal media gateway you can usually use “5060”.",
				:realm          => "The SIP realm is (just as with HTTP) a name for the authentication area. For best compatibility the realm should be the same as the SIP host (resp. SIP domain). In that case you can leave this field empty.",
				:username       => "The username for the SIP gateway.",
				:password       => "The passwort for the SIP gateway.",
				:from_user      => "The username in the URI in the “From” header. Leave empty to use the same value as the username.",
				:from_domain    => "The domain in the URI in the “From” header. Leave empty to use the same value as the host.",
				:register       => "Defines if this PBX should register itself at the gateway.",
				:reg_transport  => "The value of the “transport” parameter used in the registration. “udp” or “tcp”.",
				:expire         => "The duration in seconds for how long the registration is valid.",
			},
			:user_to_extension => {
				:user          => "",
				:user_id       => "",
				:extension     => "",
				:extension_id  => "",
			},
			:dialplan_pattern => {
				:name     => "A description.",
				:pattern  => "The pattern.",  #TODO
			},
			:dialplan_route => {
				:eac                  => "External access code to be dialed by the users to get a (virtual) outside line. Usually “0”, resp. “1” in Northern America. The EAC prefix will automatically be cut off the dialed number. Leave empty in order to enable dialing without EAC.",
				:dialplan_pattern     => "The pattern which the dialed number (the dial string, after the EAC prefix) will be matched against.",
				:dialplan_pattern_id  => "The pattern ID.",
				:pattern              => "The pattern which the dialed number (the dial string, after the EAC prefix) will be matched against.",
				:pattern_id           => "The pattern ID",
				:user                 => "The user for which this route is valid. Leave empty for all users.",
				:user_id              => "User ID",
				:sip_gateway          => "The gateway to use for dialing. Leave empty to make the route forbidden.",
				:sip_gateway_id       => "Gateway ID",
				:name                 => "Description text",
				:position             => "Order",
			},
			:cdr => {
			}
			
		},
	},
}}

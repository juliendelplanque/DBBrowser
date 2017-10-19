executing
executeOn: aDBBBrowser
	DBBPgMetadataConnectWidget new
		fromConnection: (aDBBBrowser state
								propertyAt: #pgConnection 
								ifAbsent: [ PgConnection
												hostname: ''
												port: ''
												database: ''
												user: ''
												password: '' ] );
		okButtonAction: [ :widget | 
			| connection metadata |
			connection := PgConnection
								hostname: widget hostname
								port: widget port
								database: widget database
								user: widget user
								password: widget password.
			metadata := PgMetadata
							database: widget database
							connection: connection.
			aDBBBrowser
				modelAdapter:
					(DBBPgMetadataModelAdapter new
						pgMetadata: metadata;
						connect;
						yourself).
			aDBBBrowser state
				propertyAt: #pgConnection put: connection.
			DBBRefreshDatabasesList executeOn: aDBBBrowser.
			widget window close ];
		openWithSpec
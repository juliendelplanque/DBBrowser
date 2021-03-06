executing
execute
	DBBConnectionWidget new
		fromPgConnection: (self browser state
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
			self browser modelAdapter:
					(DBBPgMetadataModelAdapter new
						pgMetadata: metadata;
						connect;
						yourself).
			self browser state
				propertyAt: #pgConnection put: connection.
			self browser execute: DBBRefreshDatabasesList.
			widget window close ];
		openWithSpec
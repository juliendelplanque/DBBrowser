initialization
initializePresenter
	super initializePresenter.
	
	self metricsList
		displayBlock: [ :item | item collect: #asString ].
		
	self exportButton
		label: 'Export' translated;
		action: [ self execute: DBBExportMetricsCommand ]
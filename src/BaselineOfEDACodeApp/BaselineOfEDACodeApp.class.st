Class {
	#name : #BaselineOfEDACodeApp,
	#superclass : #BaselineOf,
	#category : #BaselineOfEDACodeApp
}

{ #category : #baselines }
BaselineOfEDACodeApp >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			self
				declarePharoEDAIn: spec
				groups: (OrderedCollection with: 'default').
	        self declarePackagesIn: spec.
			self declareGroupsIn: spec ]
]

{ #category : #meta }
BaselineOfEDACodeApp >> declareGroupsIn: spec [
	spec
		group: 'core'
			with:
			#(#'EDACodeApp');
		group: 'tests'
			with:
			#(#'EDACodeApp-Tests');
		group: 'default' with: #('core' 'tests')
]

{ #category : #meta }
BaselineOfEDACodeApp >> declarePackagesIn: spec [
	spec
		package: #'EDACodeApp' with: [ spec requires: #('PharoEDA') ];
		package: #'EDACodeApp-Tests'
			with: [ spec requires: #('EDACodeApp') ]
]

{ #category : #dependencies }
BaselineOfEDACodeApp >> declarePharoEDAIn: spec groups: aGroupCollection [
	spec
		baseline: 'PharoEDA'
		with: [ spec
				repository: 'github://osoco/pharo-eda:event-listening/src';
				loads: aGroupCollection ].
	^ spec
]

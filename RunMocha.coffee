Module.define { named: "Run Mocha", requires: [(-> typeof mocha != "undefined"), (-> typeof chai != "undefined")], definedBy: ->
	if Meteor.is_client
		Meteor.startup => 
			if window.location.getSearchParameterByName("RunTests")
				$('body').children().hide()
				$('head').append('<link rel="stylesheet" href="mocha.css" />')
				$('body').append('<div id="mocha"></div>')
				this.mocha.run()
}
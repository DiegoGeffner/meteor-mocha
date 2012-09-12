window.location.getSearchParameterByName = (name) ->
  name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]")
  regexS = "[\\?&]" + name + "=([^&#]*)"
  regex = new RegExp(regexS)
  results = regex.exec(this.search)
  if results? then decodeURIComponent(results[1].replace(/\+/g, " ")) else undefined
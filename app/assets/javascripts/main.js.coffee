$ ->
  googlePlusOneButton()
  animateFlashMessages()
  
googlePlusOneButton = ->  
  po = document.createElement "script"
  po.type = "text/javascript"
  po.async = true
  po.src = "https://apis.google.com/js/plusone.js"
  s = document.getElementsByTagName("script")[0]
  s.parentNode.insertBefore po, s
  
animateFlashMessages = ->
  flash = $(".flash")
  # Nothing to show? Get out...
  return if not flash.html()
  
  setTimeout(
    () -> flash.fadeOut(
      800
      () -> flash.hide()
    )
    3000
  )

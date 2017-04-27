@mainLoader = () ->
  $(document.links).filter(() ->
    return this.hostname != window.location.hostname
  ).attr('target', '_blank')


@loaders = () ->
  mainLoader()
  loveLoader()
  navLoader() unless $('body').hasClass('static-body')
  calculatorLoader()

$(document).ready(loaders)
$(document)
  .on('page:load', loaders)


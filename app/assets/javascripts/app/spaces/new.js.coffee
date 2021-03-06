class mconf.NewSpaceForm
  @setup: ->
    $name = $("#space_name")
    $slug = $("#space_slug")
    $slug.attr "value", mconf.Base.stringToSlug($slug.val(), true)
    $slug.on "input", () ->
      $slug.val(mconf.Base.stringToSlug($slug.val(), true))
    $slug.on "blur", () ->
      $slug.val(mconf.Base.stringToSlug($slug.val(), false))
    $name.on "input keyup", () ->
      $slug.attr "value", mconf.Base.stringToSlug($name.val())

$ ->
  if isOnPage 'spaces', 'new|create'
    mconf.NewSpaceForm.setup()

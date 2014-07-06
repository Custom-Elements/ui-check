#ui-switch
On and off in place.


    Polymer 'ui-check',

##Events
###change
Fires when the check goes on or off.

##Attributes and Change Handlers
###checked
This is a nice `true` or `false` attribute to make data binding easier.

      checkedChanged: (oldValue, newValue) ->
        if @checked
          @$.check.setAttribute 'checked', ''
        else
          @$.check.removeAttribute 'checked'
        @fire 'change'

##Methods

##Event Handlers
Check and focus handling, these attributes are used as flags
to control formatting.

      onChange: (evt) ->
        @checked = @$.check.checked
        evt.stopPropagation()

      onFocus: ->
        @setAttribute 'focused', ''

      onBlur: ->
        @removeAttribute 'focused'

This is a bit tricky -- need to have a click handler on the whole element
so that we can catch clicks on the `content` to have a large hit area. But, clicks
in the rest of the control bubble too, so we need to eat those before they bubble.

      onContentClick: (evt) ->
        @checked = not @checked

      onCheckClick: (evt) ->
        @checked = not @checked
        evt.stopPropagation()

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->

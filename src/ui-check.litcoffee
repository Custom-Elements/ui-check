#ui-switch
On and off in place.


    Polymer 'ui-check',

##Events
###change
Fires when the check goes on or off.

##Attributes and Change Handlers
###value
This is a nice `true` or `false` attribute to make data binding easier.

      valueChanged: (oldValue, newValue) ->
        if @value
          @$.check.setAttribute 'checked', ''
        else
          @$.check.removeAttribute 'checked'
        @setAttribute 'value', @value
        @fire 'change'

##Methods

##Event Handlers
Check and focus handling, these attributes are used as flags
to control formatting.

      onChange: (evt) ->
        @value = @$.check.checked
        evt.stopPropagation()

      onFocus: ->
        @setAttribute 'focused', ''

      onBlur: ->
        @removeAttribute 'focused'

This is a bit tricky -- need to have a click handler on the whole element
so that we can catch clicks on the `content` to have a large hit area. But, clicks
in the rest of the control bubble too, so we need to eat those before they bubble.

      onContentClick: (evt) ->
        @value = not @value

      onCheckClick: (evt) ->
        @value = not @value
        evt.stopPropagation()

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->

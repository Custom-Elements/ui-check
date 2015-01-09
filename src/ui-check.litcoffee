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

##Methods

##Event Handlers
Check and focus handling, these attributes are used as flags
to control formatting.

      onChange: (evt) ->
        @value = @$.check.hasAttribute 'checked'
        @fire 'change'
        evt.stopPropagation()

      onFocus: ->
        @setAttribute 'focused', ''

      onBlur: ->
        @removeAttribute 'focused'

      onCheckClick: (evt) ->
        @value = not @value

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->

      publish:
        value:
          reflect: true

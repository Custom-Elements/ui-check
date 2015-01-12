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
        @job 'change', =>
          @fire 'change'

##Methods

##Event Handlers
Check and focus handling, these attributes are used as flags
to control formatting.

      onChange: (evt) ->
        evt.stopPropagation()
        @value = not @value

      onFocus: ->
        @setAttribute 'focused', ''

      onBlur: ->
        @removeAttribute 'focused'


##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->

      publish:
        value:
          reflect: true

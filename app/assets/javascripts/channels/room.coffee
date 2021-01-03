document.addEventListener 'turbolinks:load', ->
      App.cable.subscriptions.remove App.room  
    App.room = App.cable.subscriptions.create { channel: "RoomChannel", room: $('#messages').data('room_id') },
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#messages').append data['message']
    speak: (message) ->
      @perform 'speak', message: message
  $('#chat-input').on 'keypress', (event) ->
    if event.keyCode is 13
        #speakメソッド,event.target.valueを引数に.
        App.room.speak event.target.value
        event.target.value = ''
        event.preventDefault()


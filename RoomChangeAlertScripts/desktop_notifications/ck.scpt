on roomChange(roomName)
  
  set displayMessage to "Moved into '" & roomName & "'"
  
  display notification displayMessage with title roomName
  
end roomChange
//= require action_cable
//= require_self
//= require_tree .

this.App = {};

App.cable = ActionCable.createConsumer("/cable"); 
// sending the web socket request to the server, running on ws:localhost:3000/cable
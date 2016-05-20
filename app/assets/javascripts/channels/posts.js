//= require action_cable
//= require_self
//= require_tree .

var App = {};

App.cable = ActionCable.createConsumer("/cable");  
App.messages = App.cable.subscriptions.create('CommentsChannel', {  
  received: function(data) {
    return $('#comments').append(this.renderComment(data));
  },
  renderComment: function(data) {
    return "<p> <b>" + data.user + ": </b>" + data.comment + "</p>";
  }
});
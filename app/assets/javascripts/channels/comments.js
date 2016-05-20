App.snippets = App.cable.subscriptions.create('CommentsChannel', {  
  received: function(data) {
    return $('#comments').append(this.renderComment(data));
  },
  renderComment: function(data) {
    return "<p> <b>" + data.user.name + ": </b>" + data.snippet + "</p>";
  }
});
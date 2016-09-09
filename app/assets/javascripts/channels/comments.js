App.cable.subscriptions.create('CommentsChannel', {  
  received: function(data) {
    // $("#comments").removeClass('hidden')
    return $('#comments').append(this.renderComment(data));
  },

  renderComment: function(data) {
    return "<p>" + data.comment + "</p>";
  }
});

// because we are calling App.cable.subscribed('CommentsChannel')
//-> comments channel, #subscribed is called
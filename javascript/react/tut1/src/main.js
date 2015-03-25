var data = [
  {author: "Pete Hunt", text: "This is one comment"},
  {author: "Jordan Walke", text: "This is *another* comment"}
];

var converter = new Showdown.converter();

var Comment = React.createClass({
  render: function() {
    return (
      <div className="comment">
        <h2 className="author"> {this.props.author} </h2> 
        <span dangerouslySetInnerHTML={{__html: converter.makeHtml(this.props.children.toString())}} />
      </div>
    );
  }
});

var CommentList = React.createClass({
  render: function() {
    var commentNodes = this.props.data.map(function (comment, index) {
      return (
        <Comment author={comment.author} key={index}>
          {comment.text}
        </Comment>
      );
    });
    return (
      <div className="commentList">
        {commentNodes}
      </div>
    );
  }
});

var CommentForm = React.createClass({
  handleSubmit: function() {
    
  }, 
  render: function() {
    return (
      <form className="commentForm" onSubmit={this.handleSubmit}>
        <label for="full_name">Full Name</label>
        <input type="text" id="full_name" placeholder="Your full name" />

        <label for="date_of_birth">Date of Birth</label>
        <input type="date" id="date_of_birth" />

        <input type="submit" value="submit" />
      </form>
    );
  }
});

var CommentBox = React.createClass({
  getInitialState: function() {
    return {data: []};
  },
  componentDidMount: function() {
    var component = this;
    $.ajax({
        url: this.props.url,
        dataType:  'json'
      })
      .done(function(data, status, xhr) {
        component.setState({data:data});
      })
      .fail(function(xhr, status, error) {
        console.log(error);
      })
    ;
  },
  render: function() {
    return (
      <div className="commentBox">
        <h1>Comments</h1>
        <CommentList data={this.state.data} />
        
        <h1>Add a new comment</h1>
        <CommentForm />
      </div>
    );
  },
});

React.render(
  <CommentBox url="MOCK_DATA.json"/>,
  document.getElementById('content')
);
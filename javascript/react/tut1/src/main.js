var data = [
  {author: "Pete Hunt", text: "This is one comment"},
  {author: "Jordan Walke", text: "This is *another* comment"}
];

var converter = new Showdown.converter();

var Comment = React.createClass({
  render: function() {
    var rawCommentMarkup = converter.makeHtml(this.props.children.toString()); 
    console.log(rawCommentMarkup);
    return (
      <div className="comment">
        <h2 className="author"> {this.props.author} </h2>
        <span className="rawComment"> {this.props.children} </span>
        <span dangerouslySetInnerHtml={{__html: "s"}} />
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
  render: function() {
    return (
      <div class="commentForm">
        Comment form 
      </div>
    );
  }
});

var CommentBox = React.createClass({
  render: function() {
    return (
      <div className="commentBox">
        <h1>Comments</h1>
        <CommentList data={this.props.data} />
      </div>
    );
  },
});

React.render(
  <CommentBox data={data}/>,
  document.getElementById('content')
);
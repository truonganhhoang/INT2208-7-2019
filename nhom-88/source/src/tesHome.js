import React from 'react'
import axios from 'axios'

class App extends React.Component{

    constructor(props){
        super(props);
    }
    render(){
        return <PagaContainer />;
    }
}

class ProfileSummary extends React.Component{
    render(){
        return(
        <div id="profile-summary">
			<div className="content">
				<img className='avatar' src={this.props.linkAvatar} />
				<p>{this.props.yourName}</p>
		    </div>
		</div>
        );
    }
}



/// test request
  

class PostTweet extends React.Component{
    render(){

        return(
        <div id="tweet-content">
        
            <textarea 
                className="tweet-compose" 
                placeholder="Compose new Tweet..."
                onChange={this.handleChange}>
            </textarea>
            <div id="tweet-controls">
				<div id="char-count">140</div>
				<button className="button" id="tweet-submit" type="submit">Tweet</button>
			</div>
            
        </div>
        );
    }
}

class Dashboard extends React.Component{
    render(){
        return(
        <div id="dashboard">
            <ProfileSummary linkAvatar={'/image/jennyshen.jpg'} yourName={'Vuongxuan'} />
            <PostTweet/>
        </div>);
    }
}


class ShowTweet extends React.Component{
    render(){
        return(
        <div>
            <img className="avatar" src={this.props.linkAvatar} />
		    <strong className="fullname">{this.props.fullName}</strong>
		    <span className="username">{this.props.userName}</span>
		    <p className="tweet-text">{this.props.tweetText}</p>
        </div>);
    }
}

class TweetAction extends React.Component{
    render(){
        return(
        <div className="tweet-actions">
			<ul>
				<li><span className="icon action-reply"></span> Reply</li>
				<li><span className="icon action-retweet"></span> Retweet</li>
				<li><span className="icon action-favorite"></span> Favorite</li>
				<li><span className="icon action-more"></span> More</li>
			</ul>
		</div>);
    }
}


class Stats extends React.Component{
    render(){
        return (
        <div class="stats">
			<div class="retweets">
				<p class="num-retweets">{this.props.retweets}</p>
				<p>RETWEETS</p>
			</div>

		    <div class="time">
			    {this.props.time}
            </div>
	    </div>);
    }
}



class Tweet extends React.Component{
    render(){
        return(
            <div className="tweet">
                <ShowTweet linkAvatar={'/image/jennyshen.jpg'} fullName={'vuongxuan'} userName={'@vuggg'} tweetText={'The weather today is good'}/>
                <TweetAction />
                <Stats />
            </div>
        );
    }
}

class Tweets extends React.Component{
    constructor(props){
        super(props);
        this.numberTweets = this.numberTweets.bind(this);
    }

    
}


class TweetContainer extends React.Component{
    constructor(props){
        super(props);
    }
    render(){
        return(
            
            <div id="main">
                <h2>Tweet</h2>
                <div id="stream">
                    <Tweet />
                    <Tweet />
                </div>
            </div>

        );
    }
}

class PagaContainer extends React.Component{
    render(){
        return(
            <body>  
                <div id="page-container">
                    <Dashboard />
                    <TweetContainer />
                </div>
            </body>
        );
    }
}







export default App;
import React from 'react';
import Menu from '../Components/Menu_';
import {
    Comment, Icon, Tooltip, Avatar, Spin, Badge, Input, Button
  } from 'antd';

import moment from 'moment';




class Page extends React.Component {
  state = {
    likes: 0,
    dislikes: 0,
    action: null,
  }

  like = () => {
    this.setState({
      likes: 1,
      dislikes: 0,
      action: 'liked',
    });
  }

  dislike = () => {
    this.setState({
      likes: 0,
      dislikes: 1,
      action: 'disliked',
    });
  }

  render() {
    const { likes, dislikes, action } = this.state;

    const buttonRocket = {
      'padding': '2px 5px 2px',

    }

    const actions = [
      <span>
        <Tooltip title="Like">
          <Icon
            type="like"
            theme={action === 'liked' ? 'filled' : 'outlined'}
            onClick={this.like}
          />
        </Tooltip>
        <span style={{ paddingLeft: 8, cursor: 'auto' }}>
          {likes}
        </span>
      </span>,
      <span>
        <Tooltip title="Dislike">
          <Icon
            type="dislike"
            theme={action === 'disliked' ? 'filled' : 'outlined'}
            onClick={this.dislike}
          />
        </Tooltip>
        <span style={{ paddingLeft: 8, cursor: 'auto' }}>
          {dislikes}
        </span>
      </span>,
      <span>Reply to</span>,
    ];

    return (
        <React.Suspense fallback={<Spin/>}>
        <Menu/>

        <div className="page-content">

            <div id="dashboard-left">
                <Badge count={2}><Avatar size="large"
                    src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"/>
                </Badge>
                <b>UserName</b><br></br>
                @accountname
            </div>
        <div id="tweet-container">
            <div className="home-tweet-box">
               <center> 
                    <Avatar shape="circle" src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"/>
                   
                      
                      <Input id="home-tweet-box-input" placeholder="What happening?"/>
                      <Button className={buttonRocket} type="primary" shape="circle" icon="rocket" size="medium" />
                    
                   </center>
            </div>
        <Comment
            actions={actions}
            author={<b>Han Solo</b>}
            avatar={(
          <Avatar
            src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"
            alt="Han Solo"
          />
        )}
        content={(
          <p>We supply a series of design principles, practical patterns and high quality design resources (Sketch and Axure), to help people create their product prototypes beautifully and efficiently.</p>
        )}
            datetime={(
            <Tooltip title={moment().format('YYYY-MM-DD HH:mm:ss')}>
                <span>{moment().fromNow()}</span>
            </Tooltip>
            )}
        />

        <Comment
            actions={actions}
            author={<b>Han Solo</b>}
            avatar={(
          <Avatar
            src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"
            alt="Han Solo"
          />
        )}
        content={(
          <p>We supply a series of design principles, practical patterns and high quality design resources (Sketch and Axure), to help people create their product prototypes beautifully and efficiently.</p>
        )}
            datetime={(
            <Tooltip title={moment().format('YYYY-MM-DD HH:mm:ss')}>
                <span>{moment().fromNow()}</span>
            </Tooltip>
            )}
        />
        </div>
      </div>
      </React.Suspense>
    );
  }
}

export default Page;
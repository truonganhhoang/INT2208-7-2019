import React from 'react';
import { Menu, Icon } from 'antd';
import './search';
import SearchFrom from './search';

class MenuBar extends React.Component {
  state = {
    current: 'mail',
  }

  handleClick = (e) => {
    console.log('click ', e);
    this.setState({
      current: e.key,
    });
  }

  render() {
    return (
        
      <Menu
        onClick={this.handleClick}
        selectedKeys={[this.state.current]}
        mode="horizontal"
      >
        <Menu.Item key="mail">
            <Icon type="home" />Home
        </Menu.Item>
        <Menu.Item key="alipay">
            <Icon type="message" /> Message
        </Menu.Item>
        <Menu.Item key="search">
            <SearchFrom/>
        </Menu.Item>
      </Menu>
       
    );
  }
}



export default MenuBar;
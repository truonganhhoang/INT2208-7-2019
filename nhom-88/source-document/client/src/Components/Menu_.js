import React from 'react';
import { Menu, Icon, Input, Spin, Badge } from 'antd';
import {Link} from 'react-router';

const Search = Input.Search;
const MenuItem = Menu.Item;

class MenuBar extends React.Component {


  state = {
    current: 'mail',
    isLogin: false
  }

  handleClick = (e) => {
    console.log('click ', e);
    this.setState({
      current: e.key,
    });
  }

  render() {
    return (
      <React.Suspense fallback={<Spin/>}>
      <Menu
        onClick={this.handleClick}
        selectedKeys={[this.state.current]}
        mode="horizontal"
      > 
        <MenuItem key="home-page">
            <Icon type="home" />Home
        </MenuItem>


        <Menu.Item key="app">
          {this.state.isLogin ? <Badge dot><Icon type="message" /></Badge> :
          <Icon type="message"/>} Messgage
        </Menu.Item>

        <MenuItem key="search">
          <Search
          placeholder="Search"
          onSearch={value => console.log(value)}
          style={{ width: 200 }}
          />
        </MenuItem>

        <MenuItem key="info-page" id="about">
            <Icon type="info-circle" />About
        </MenuItem>


      </Menu>
      </React.Suspense>
       
    );
  }
}



export default MenuBar;
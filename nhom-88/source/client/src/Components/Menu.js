import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'

class Menu extends React.Component{

	constructor(props){
		super(props);
		this.state= {
			isLogin: false,
			userInfo:{}
		}
		
	}


    render(){

        return(
            <div className="firstnav">
				<div className="fix-firstnav">
					<Home/>
					
					<Search/>
					
				</div>
			</div>
        );
    }
}


class Home extends React.Component{
	render(){
		return(
			<button type="button" className="but">
				<FontAwesomeIcon icon="home"/>
				<b> Home</b>
			</button>
		);
	}
}

class Message extends React.Component{
	render(){


		return(
			<button className="but">
				<FontAwesomeIcon icon="envelope"/>
				<b> Message</b>
			</button>
		);
	}
}

class Notification extends React.Component{
	render(){

		return(
			<button className="but">
			<FontAwesomeIcon icon="bell"/>
						<b> Notification</b>
			</button>
		);
	}
}


class User extends React.Component{
	render(){
		return(
			<React.Fragment>
				<button className="circlebutton" type="button" ><b> Đăng Tweet</b> </button>
				<img id="imghs" src="/image/angry.jpg" class="img-circle" alt="Cinque Terre"/>
			</React.Fragment>
		);
	}
}

class Search extends React.Component{
	render(){
		return(
			<React.Fragment>
				
					<input type="text" id="seach" placeholder="Search" />
					<button id="iconsearch"><FontAwesomeIcon icon="search"/></button>
                
				
			</React.Fragment>
		);
	}
}


export default Menu;
import React from 'react';
import { readSync } from 'fs';


class Register extends React.Component{
    
    constructor(props){
        super(props);
        this.state = {
            studentId:'',
            password:'',
            success: false
        }
        this.API = 'http://localhost:5000/register';

        this.handIdChange = this.handIdChange.bind(this);
        this.handPasswordChange = this.handPasswordChange.bind(this)
        this.sentRequest = this.sentRequest.bind(this);
        
    }

    handIdChange(event){
        this.setState({
            studentId: event.target.value
        });
    }

    handPasswordChange(event){
        this.setState({
            password: event.target.value
        });
    }


    sentRequest(){
        const data = {
            studentId: this.state.studentId,
            password: this.state.password
        }

        fetch(this.API,{

            method: 'POST',
            body: JSON.stringify(data),
            headers: {
                'content-type': 'application/json'
            }}).then(response => response.json())
            .then((result) => {
                this.setState({
                    success: true
                });
                console.log(this.state.success);
                
            });

    }

    

    render(){
        return(
            <React.Fragment>
                
                <div id="page-container">
                <div id="signin-wrapper">
                    <div className="signin-section">

                    <h2>Signup to Twituet</h2>

                    <form onSubmit={this.sentRequest}>
                        <div className="field">
                            <input 
                                className="form-control" 
                                type="text" 
                                name="username" 
                                placeholder="Student ID"
                                onChange={this.handIdChange} />
                        </div>
                       
                        <div className="field">
                            <input 
                                className="form-control" 
                                type="password" name="password" 
                                placeholder="Password"
                                onChange={this.handPasswordChange}
                                />
                        </div>
                        <br/>

                        <div className="subchck">
                            <button className="btn" id="btn-submit" type="submit">Sign Up</button>
                         </div>
                    </form>
                    </div>
                </div>

                <div className="footer-login">
                        <div className="field">
                            <p>Already Twituet account? <a className="forgot" href="/" rel="noopener">Sign in now »</a></p>
                        </div>
                    </div>

                </div>
           </React.Fragment>
        );
    }
}

export default Register;
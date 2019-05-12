import React, { Component } from 'react'
import userImages from '../images/user.jpg'
import contactImages from '../images/contact-me.png'
export default class Footer extends Component {
  render() {
    return (
      <React.Fragment>
      <div className="footer-contact">
        <div className="container">
            <div className="row pb-3">
            <div className="col-sm-4 autor-quote">
                <div className="row">
                <div className="col-sm-4 hidden-xs-down">
                    <img src={userImages} className="img-fluid author" alt = "user"/>
                </div>
                <ul className="text-author">
                    <li>
                    <i className="fas fa-chevron-circle-right"> </i>
                    Mình là Nguyễn Đức Anh - thiết kế trang web
                    </li>
                    <li>
                    <i className="fas fa-chevron-circle-right"> </i>
                    I'm Developer and Photographer
                    </li>
                    <i className="fas fa-chevron-circle-right"> </i>
                    Liên hệ với mình qua
                    <a href="https://www.facebook.com/eden.ducanh" className="fab fa-facebook  contact-me-fb icon-fb">
                    </a>
                    <a href="https://github.com/BossDucAnh" className="fab fa-github  contact-me-fb icon-github">
                    </a>
                    <a href="https://www.instagram.com/_anhnd9_/" className="fab fa-instagram  contact-me-fb icon-instagram">
                    </a>
                    <li>
                    </li>
                </ul>
                </div>
            </div>{/*  end author nguyen duc anh */}
            <div className="col-sm-4 social-media">
                <h4 style={{color: 'white'}} className="text-md-center text-xs-center font-weight-bold">SOCIAL MEDIA</h4>
                <ul className="contact-media pt-2 text-md-center text-xs-center ">
                <li>
                <a href="https://www.facebook.com/eden.ducanh" className="fab fa-facebook fa-2x icon-fb">
                </a>
                <a href="https://github.com/BossDucAnh" className="fab fa-twitter fa-2x icon-twitter">
                </a>
                <a href="https://www.instagram.com/_anhnd9_/" className="fas fa-envelope-open fa-2x icon-mail">
                </a>
                </li>
                </ul>
            </div>
            <div className="col-sm-4 push-sm-1 contact-us">
                <img src={contactImages} className="img-fluid" alt = "description"/>
                <h4 style={{color: 'white'}} className="font-weight-bold  pt-2">Do you have a question?</h4>
                <h3 style={{color: '#e34b50'}} className="font-weight-bold">Contact us</h3>
                <p style={{color: 'white'}}>Hotline : <b>0988639450</b></p>
                <p style={{color: 'white'}}>Email : <b>harrykai99@gmail.com</b></p>
                <p style={{color: 'white'}}>Address : <b>Đại học Công Nghệ-ĐHQGHN,144 Xuân Thủy,Cầu Giấy,Hà Nội</b></p>
            </div>
            </div>
            <div className="row">
            <div className="col-sm-12">
                <h4 style={{color: 'white'}} className="text-md-center text-xs-center pt-2 copyright">Privacy Policy © 2019 A-H-H team support - All Rights Reserved</h4>
            </div>
            </div>
        </div>
    </div>

      </React.Fragment>
    )
  }
}

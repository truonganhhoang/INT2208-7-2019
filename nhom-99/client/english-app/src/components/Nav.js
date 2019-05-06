import React, { Component } from 'react'

export default class Nav extends Component {
  render() {
    return (
      <React.Fragment>
      <div className="part-top">
        <div className="menu-navgator">
            <nav className="navbar navbar-expand-lg navbar-light bg-light fixed-top nav-config">
            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span className="navbar-toggler-icon" />
            </button>
            <div className="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul className="navbar-nav mr-auto mt-2 mt-lg-0">
                <li className="nav-item active">
                    <a className="nav-link" href="http://localhost:3000"><i className="fas fa-chevron-left" />   Chọn khóa học</a>
                </li>
                </ul>
            </div>
            <ul className="nav navbar-nav float-sm-right">
                <li className="nav-item">
                <a className="nav-link btn btn-outline-secondary support-menu" href="/user/suppport">Hỗ trợ giảng viên <i style={{color: 'yellow'}} className="fas fa-exclamation" /></a>
                </li>
            </ul>
            </nav>	
        </div>
        </div>
      </React.Fragment>
    )
  }
}

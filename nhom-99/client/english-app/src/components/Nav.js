import React, { Component } from 'react'
import {connect} from 'react-redux'
import { Link } from 'react-router-dom'
import { withRouter } from 'react-router-dom'




class Nav extends Component {
  constructor(props) {
    super(props)
    this.changeEditTitle = this.changeEditTitle.bind(this);
    this.showTitle = this.showTitle.bind(this);
  }


  changeEditTitle() {
    this.props.editTitlePop();
  }

  showTitle() {
    if(this.props.controlNav === 1) {
      return <a className="nav-link" href="http://localhost:3000"><i className="fas fa-chevron-left" />   Chọn khóa học</a>
    }
    else if(this.props.controlNav === 2) return (
      <Link className="nav-link" to={"/"}><i className="fas fa-chevron-left" />   Chọn chủ đề</Link>

    )
    
    
  }


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
                <li onClick = {this.changeEditTitle}  className="nav-item active">
                 {this.showTitle()} 
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

const mapStateToProps = (state, ownProps) => {
  return {
    controlNav: state.controlNavReducers.controlNav
  }
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    editTitlePop: () => {
      dispatch({type : "CHANGE_NAV_TITLE_POP"})
    }
  }
}


export default withRouter(connect(mapStateToProps , mapDispatchToProps)(Nav))

import React, { Component } from 'react'
import {Link} from 'react-router-dom'
import {connect} from 'react-redux'


class CoursesItem extends Component {
  constructor(props) {
    super(props);
    this.changeEditTitle = this.changeEditTitle.bind(this);
    
  }


  changeEditTitle() {
    this.props.editTitlePush();
  }

  render() {
  
    return (    
        <React.Fragment>
          <div onClick = {this.changeEditTitle} className="one-frames-courses no-gutters ">
              <Link to={"/quiz/" + this.props.id} style={{textDecoration: 'none', color: 'black'}} className="row">
                  <div className="col-sm-3 col-xs-3 img-courses">

                  <img src={require('../images/' + this.props.images)} className="img-fluid" alt = "anh chu de"/>
                  </div>
                  <div className="col-xs-9 col-sm-9 description-them">
                  <p className="title-them-courses"><b>{this.props.title}</b></p>
                  <small>{this.props.description}</small>
                  </div>
              </Link>
          </div>
        </React.Fragment>
    )
  }
}
const mapStateToProps = (state, ownProps) => {
  return {
    controlNav: state.controlNavReducers.controlNav,
   
  }
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    editTitlePush: () => {
      dispatch({type : "CHANGE_NAV_TITLE_PUSH"})
    }
  }
}


export default connect(mapStateToProps, mapDispatchToProps)(CoursesItem)


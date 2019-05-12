import React, { Component } from 'react'
import CoursesItem from './CoursesItem';
export default class MainPart extends Component {
  

  render() {
    return (
      <React.Fragment>
        <div className="main-part">
            <div className="them-courses" id="them-courses">
                <div className="container">
                <div className="row">
                    <div className="col-sm-12 col-md-8 col-xs-12 one-part-courses " style={{borderRadius: '10px'}}>
                    <div className="row mt-4 ">	
                    </div>
                      {
                        this.props.dataReceive.map((value,key) => 
                          <CoursesItem
                            key = {value._id} 
                            id = {value._id}
                            title = {value.title}
                            description = {value.description}
                            images = {value.images}
                          />
                        )
                      }
                    </div>
                </div>
                </div>
            </div>
        </div>
      </React.Fragment>
    )
  }
}

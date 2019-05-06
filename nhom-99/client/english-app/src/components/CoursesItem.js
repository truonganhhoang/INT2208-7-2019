import React, {Component} from 'react'

export default class CoursesItem extends Component {


    render() {
        return (
            < React.Fragment >
            < div
        className = "one-frames-courses no-gutters " >
            < a
        href = {"/quiz"}
        style = {
        {
            textDecoration: 'none', color
        :
            'black'
        }
    }
        className = "row" >
            < div
        className = "col-sm-3 col-xs-3 img-courses" >
            < img
        src = {".." +this.props.images}
        className = "img-fluid"
        alt = "anh chu de" / >
            < /div>
            < div
        className = "col-xs-9 col-sm-9 description-them" >
            < p
        className = "title-them-courses" > < b > {this.props.title} < /b></
        p >
        < small > {this.props.description} < /small>
        < /div>
        < /a>
        < /div>
        < /React.Fragment>
    )
    }
}

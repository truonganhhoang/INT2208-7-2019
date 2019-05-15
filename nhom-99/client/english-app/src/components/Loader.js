import React, { Component } from 'react';
import LoadingBar from 'react-redux-loading-bar'


class Loader extends Component {
    render() {
        return (
            <header style = {{'height' : '5px'}}>
                <LoadingBar style={{ backgroundColor: 'blue', height: '5px' }}  />
            </header>
        );
    }
}

export default Loader;
import React from 'react';
import {Input}  from 'antd';
import { Component } from 'react';


const Search = Input.Search;

class SearchFrom extends React.Component{
    render(){
        return(
            <Search
                placeholder="input search text"
                onSearch={value => console.log(value)}
                style={{ width: 200 }}
            />
        );
    }
}

export default SearchFrom;
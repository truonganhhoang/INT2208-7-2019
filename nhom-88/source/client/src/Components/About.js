import React from 'react';
import {Menu, Icon} from 'antd';

class About extends React.Component{

    render(){
        return(
            <React.Fragment>
                <Menu>
                    <Menu.Item>
                        <Icon type="info-circle"/> About
                    </Menu.Item>

                    <div id="page-container">
                        <h2>About 88 Group</h2>
                        <p>* Trương Việt Hoàng </p>
                        <p>* Phùng Xuân Vượng</p>
                        <p>* Hoàng Trần Long Nhật</p>
                        <p>* Phạm Minh Đức</p>
                        <p>* Phan Huy Hoàng</p>
                    </div>
                </Menu>
            </React.Fragment>
        );
    }
}

export default About;
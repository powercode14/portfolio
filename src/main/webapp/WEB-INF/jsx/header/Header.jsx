import React, {Component} from 'react';
import '../../css/header.css';

class Header extends Component {
    render() {
        return (
            <div className="Header">
                <ul>
                    <li><a className="menuLink">Home</a></li>
                    <li><a className="menuLink">About</a></li>
                    <li><a className="menuLink">Skills</a></li>
                    <li><a className="menuLink">Project</a></li>
                    <li><a className="menuLink">Contact</a></li>
                </ul>
            </div>
        );
    }
}

export default Header;
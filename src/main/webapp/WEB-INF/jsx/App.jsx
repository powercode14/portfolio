import React, { Component } from 'react';
import ReactDOM from "react-dom";
import '../css/custom.css';
import Header from "./header/Header";

class App extends Component {
    state = {
        powercode: 'powercode man'
    }

    render() {
        const style = {
            textAlign: "center"
        };

        return  (
            <div className="App" style={style}>
                {/*<MyName />
                <MyName2 name={"이름2"} />*/}
                <Header />
            </div>
            /*<div className="App">
                <p>hello powercode</p>

                <form action="/helloMybatis">
                    <input type="text" name="param" defaultValue={this.state.powercode} />
                    <button type="submit">전송</button>
                </form>

                <MyName name="리액트"></MyName>
            </div>*/
        );
    }

}

ReactDOM.render(<App />, document.getElementById('root'));
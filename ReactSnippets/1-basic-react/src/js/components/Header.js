import React from "react";

import Title from "./Header/Title";

export default class Header extends React.Component {
    // This is where you would execute logic
    // Created a method for this class
    handleChange(e) {
        const title = e.target.value;
        //Dynamic Information
        this.props.changeTitle(title);
    }

    render() {
        // Could do like
        // var list = [ <Title />, <Title /> ]
        // return(
        // <div>
        //    {list}
        // </div>
        // )
        // ... more useful for <Li>
        return (


            // NOTE: you cannot return two html elements.. just wrap them in a div
            // Anything in { } will execute as normal javascript
            // {title} print out the value of title
            // {3 + 3} will return a value of 6
            // {function} will execute the function .. but this isn't the place to do that
            <div>
                <Title title={this.props.title}/>
                <input value={this.props.title} onChange={this.handleChange.bind(this)}/>
            </div>

        );
        // always bind "this" so now nomatter who calls the handleChange(e) function, it will update
        // on that level
    }
}

import React from "react";

// Convention - Components start with a Capital Letter
export default class Title extends React.Component {
    render() {
        return (
            // Anything in the Parenthesis here will be
            // converted into HTML
            <h1>{this.props.title}</h1>
        );
    }
}

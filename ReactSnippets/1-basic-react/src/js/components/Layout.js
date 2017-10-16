import React from "react";

import Footer from "./Footer";
import Header from "./Header";
// Capitalize components as a standard because they are constructors
// It isn't a rendered DOM element, it has the power to render the DOM elements

/**
 * Data Gets handled in a few ways:
 * State - available through this.state. whenever it changes on the component. It will
 * update the DOM and if there isn't - it won't Update the DOM. This is the huge benefit -
 * a virtual DOM. React Manages the DOM for you. This allow applications to become extremely fast
 * State only gets used if the state has an internal value that only affects that component, but not the
 * rest of the app. State is appropiate
 *
 * Props - are injected into every component.
 * Context -
 */

export default class Layout extends React.Component {
    // Constructor method
    constructor() {
        super();    //MUST always call super() on the first line of constructor in react
        this.state = {
            title: "Welcome",
        };      // Set Initial State
    }

    changeTitle(title) {
        this.setState({title});
    }

    render() {
        // Access state by doing this.blah
        // When it renders everything - this is called the DOM Tree
        return (
            <div>
                <Header changeTitle={this.changeTitle.bind(this)} title={this.state.title}/>
                <Footer />
            </div>
        );
    }

    /**
     Props Example: This is how you pass multiple things into a header
     with different values
     render() {
     const title = "welcome will"

     return (
     <div>
     <Header title={title}/>
     <Header title={"Other Title"} />
     <Footer />
     </div>
     );
     }
     */
}

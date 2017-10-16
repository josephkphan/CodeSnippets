import React from "react";

import Article from "../components/Article";

export default class Archives extends React.Component {
    render() {
        // clean way to extract out parameters
        const {query} = this.props.location;    // grabs the query (anything with a ?)
        const {params} = this.props;            // grabs the part after route i.e. article/THIS_ARTICLE
        const {article} = params;               // ^
        const {date, filter} = query;           // Extracts out date and filter from the query

        const Articles = [
            "Some Article",
            "Some Other Article",
            "Yet Another Article",
            "Still More",
            "Fake Article",
            "Partial Article",
            "American Article",
            "Mexican Article",
        ].map((title, i) => <Article key={i} title={title}/>);

        return (
            <div>
                <h1>Archives</h1>
                article: {article}, date: {date}, filter: {filter}
                <div class="row">{Articles}</div>
            </div>
        );
    }
}

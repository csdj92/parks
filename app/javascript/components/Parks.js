import React from "react"
import PropTypes from "prop-types"
class Parks extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

Parks.propTypes = {
  greeting: PropTypes.string
};
export default Parks

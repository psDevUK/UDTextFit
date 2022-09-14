import React from 'react';
import { withComponentFeatures } from 'universal-dashboard'
import { Textfit } from 'react-textfit';

const UDTextFit = props => {
  return (
    <Textfit
      key={props.id}
      mode={props.mode}
      forceSingleModeWidth={props.singleWidth}>
      {props.text}
    </Textfit>
  );;
}

export default withComponentFeatures(UDTextFit)
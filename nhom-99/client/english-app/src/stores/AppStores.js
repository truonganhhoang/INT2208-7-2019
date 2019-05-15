import controlNavReducers from '../reducers/ControlNavReducer'
import {combineReducers , createStore} from 'redux'


const rootReducer = combineReducers({
    controlNavReducers,
})


let store = createStore(rootReducer);
store.subscribe(() => {
  //console.log(JSON.stringify(store.getState()));
})


export default store;


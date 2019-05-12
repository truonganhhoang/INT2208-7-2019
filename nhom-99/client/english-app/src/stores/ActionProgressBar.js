import {showLoading , hideLoading , increment} from 'react-redux-loading-bar'
export const actions = {
  doSomeApiCall: () => (dispatch) => {
    dispatch(showLoading());
    setTimeout(() => {
      dispatch(increment());
      dispatch(hideLoading())
    }, 5000);
  }
};
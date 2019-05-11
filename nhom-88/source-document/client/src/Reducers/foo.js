//reducer/foo.js
export default function foo(state = null, action) {
    switch (action.type) {
        case 'MY_ACTION_TYPE':
          return action.payload
    }    
    return state;
}
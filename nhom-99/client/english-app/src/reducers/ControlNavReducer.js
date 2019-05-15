const ownState = {
    controlNav : 1
}
const controlNavReducers = (state = ownState, action) => {
    switch (action.type) {
        case 'CHANGE_NAV_TITLE_POP':
            return {...state , controlNav : 1}
        case 'CHANGE_NAV_TITLE_PUSH':
            return {...state , controlNav : 2} 

        default:
            return state
    }
}
export default controlNavReducers;
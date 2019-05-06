webpackJsonp(["main"],{

/***/ "../../../../../src/$$_gendir lazy recursive":
/***/ (function(module, exports) {

function webpackEmptyAsyncContext(req) {
	// Here Promise.resolve().then() is used instead of new Promise() to prevent
	// uncatched exception popping up in devtools
	return Promise.resolve().then(function() {
		throw new Error("Cannot find module '" + req + "'.");
	});
}
webpackEmptyAsyncContext.keys = function() { return []; };
webpackEmptyAsyncContext.resolve = webpackEmptyAsyncContext;
module.exports = webpackEmptyAsyncContext;
webpackEmptyAsyncContext.id = "../../../../../src/$$_gendir lazy recursive";

/***/ }),

/***/ "../../../../../src/app/_directives/alert.component.html":
/***/ (function(module, exports) {

module.exports = "<div *ngIf=\"message\" [ngClass]=\"{ 'alert': message, 'alert-success': message.type === 'success', 'alert-danger': message.type === 'error' }\">{{message.text}}</div>"

/***/ }),

/***/ "../../../../../src/app/_directives/alert.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AlertComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services__ = __webpack_require__("../../../../../src/app/_services/index.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var AlertComponent = (function () {
    function AlertComponent(alertService) {
        this.alertService = alertService;
    }
    AlertComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.subscription = this.alertService.getMessage().subscribe(function (message) {
            _this.message = message;
        });
    };
    AlertComponent.prototype.ngOnDestroy = function () {
        this.subscription.unsubscribe();
    };
    return AlertComponent;
}());
AlertComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'alert',
        template: __webpack_require__("../../../../../src/app/_directives/alert.component.html")
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services__["a" /* AlertService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services__["a" /* AlertService */]) === "function" && _a || Object])
], AlertComponent);

var _a;
//# sourceMappingURL=alert.component.js.map

/***/ }),

/***/ "../../../../../src/app/_directives/index.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__alert_component__ = __webpack_require__("../../../../../src/app/_directives/alert.component.ts");
/* harmony namespace reexport (by used) */ __webpack_require__.d(__webpack_exports__, "a", function() { return __WEBPACK_IMPORTED_MODULE_0__alert_component__["a"]; });

//# sourceMappingURL=index.js.map

/***/ }),

/***/ "../../../../../src/app/_guards/auth.guard.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AuthGuard; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var AuthGuard = (function () {
    function AuthGuard(router) {
        this.router = router;
    }
    AuthGuard.prototype.canActivate = function (route, state) {
        if (localStorage.getItem('currentUser')) {
            // logged in so return true
            return true;
        }
        // not logged in so redirect to login page with the return url
        this.router.navigate(['/login'], { queryParams: { returnUrl: state.url } });
        return false;
    };
    return AuthGuard;
}());
AuthGuard = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */]) === "function" && _a || Object])
], AuthGuard);

var _a;
//# sourceMappingURL=auth.guard.js.map

/***/ }),

/***/ "../../../../../src/app/_guards/confirm-test.guard.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ConfirmTestGuard; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var ConfirmTestGuard = (function () {
    function ConfirmTestGuard(router) {
        this.router = router;
    }
    ConfirmTestGuard.prototype.canActivate = function (route, state) {
        return true;
        // console.log(state.url);
        // if (localStorage.getItem('testing')) {
        //     // logged in so return true
        //     return true;
        // }
        // // // not logged in so redirect to login page with the return url
        // // this.router.navigate(['/'], { queryParams: { returnUrl: state.url }});
        // this.router.navigate([state.url]);
        // return false;
    };
    return ConfirmTestGuard;
}());
ConfirmTestGuard = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */]) === "function" && _a || Object])
], ConfirmTestGuard);

var _a;
//# sourceMappingURL=confirm-test.guard.js.map

/***/ }),

/***/ "../../../../../src/app/_guards/logged.guard.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LoggedGuard; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var LoggedGuard = (function () {
    function LoggedGuard(router) {
        this.router = router;
    }
    LoggedGuard.prototype.canActivate = function (route, state) {
        if (localStorage.getItem('currentUser')) {
            this.router.navigate(['/'], { queryParams: { returnUrl: state.url } });
            return false;
        }
        return true;
    };
    return LoggedGuard;
}());
LoggedGuard = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */]) === "function" && _a || Object])
], LoggedGuard);

var _a;
//# sourceMappingURL=logged.guard.js.map

/***/ }),

/***/ "../../../../../src/app/_models/index.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__user__ = __webpack_require__("../../../../../src/app/_models/user.ts");
/* harmony namespace reexport (by used) */ __webpack_require__.d(__webpack_exports__, "a", function() { return __WEBPACK_IMPORTED_MODULE_0__user__["a"]; });

//# sourceMappingURL=index.js.map

/***/ }),

/***/ "../../../../../src/app/_models/question/question.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Question; });
var Question = (function () {
    function Question(questionNumber, questionContent, optionA, optionB, optionC, optionD) {
        this.questionNumber = questionNumber;
        this.questionContent = questionContent;
        this.optionA = optionA;
        this.optionB = optionB;
        this.optionC = optionC;
        this.optionD = optionD;
    }
    return Question;
}());

//# sourceMappingURL=question.js.map

/***/ }),

/***/ "../../../../../src/app/_models/quiz-detail/quiz.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Quiz; });
var Quiz = (function () {
    function Quiz(quizNumber, language, catalogy, questionQuantity, isCompleted) {
        this.quizNumber = quizNumber;
        this.language = language;
        this.catalogy = catalogy;
        this.questionQuantity = questionQuantity;
        this.isCompleted = isCompleted;
    }
    return Quiz;
}());

//# sourceMappingURL=quiz.js.map

/***/ }),

/***/ "../../../../../src/app/_models/result.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Result; });
var Result = (function () {
    function Result(questionContent, yourAnswer, trueAnswer) {
        this.questionContent = questionContent;
        this.yourAnswer = yourAnswer;
        this.trueAnswer = trueAnswer;
        this.accuracy = (yourAnswer === trueAnswer);
    }
    return Result;
}());

//# sourceMappingURL=result.js.map

/***/ }),

/***/ "../../../../../src/app/_models/user.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return User; });
var User = (function () {
    function User(firstName, lastName, username, password, email, birthday, gender, role, school, id, avatarLink) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.username = username;
        this.password = password;
        this.email = email;
        this.birthday = birthday;
        this.gender = gender;
        this.role = role;
        this.school = school;
        this.id = id;
        this.avatarLink = avatarLink;
    }
    return User;
}());

//# sourceMappingURL=user.js.map

/***/ }),

/***/ "../../../../../src/app/_services/alert.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AlertService; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs__ = __webpack_require__("../../../../rxjs/Rx.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_rxjs__);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var AlertService = (function () {
    function AlertService(router) {
        var _this = this;
        this.router = router;
        this.subject = new __WEBPACK_IMPORTED_MODULE_2_rxjs__["Subject"]();
        this.keepAfterNavigationChange = false;
        // clear alert message on route change
        router.events.subscribe(function (event) {
            if (event instanceof __WEBPACK_IMPORTED_MODULE_1__angular_router__["b" /* NavigationStart */]) {
                if (_this.keepAfterNavigationChange) {
                    // only keep for a single location change
                    _this.keepAfterNavigationChange = false;
                }
                else {
                    // clear alert
                    _this.subject.next();
                }
            }
        });
    }
    AlertService.prototype.success = function (message, keepAfterNavigationChange) {
        if (keepAfterNavigationChange === void 0) { keepAfterNavigationChange = false; }
        this.keepAfterNavigationChange = keepAfterNavigationChange;
        this.subject.next({ type: 'success', text: message });
    };
    AlertService.prototype.error = function (message, keepAfterNavigationChange) {
        if (keepAfterNavigationChange === void 0) { keepAfterNavigationChange = false; }
        this.keepAfterNavigationChange = keepAfterNavigationChange;
        this.subject.next({ type: 'error', text: message });
    };
    AlertService.prototype.getMessage = function () {
        return this.subject.asObservable();
    };
    return AlertService;
}());
AlertService = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */]) === "function" && _a || Object])
], AlertService);

var _a;
//# sourceMappingURL=alert.service.js.map

/***/ }),

/***/ "../../../../../src/app/_services/authentication.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AuthenticationService; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_operators__ = __webpack_require__("../../../../rxjs/operators.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_rxjs_operators___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_rxjs_operators__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs__ = __webpack_require__("../../../../rxjs/Rx.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_rxjs__);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var AuthenticationService = (function () {
    function AuthenticationService(http) {
        this.http = http;
    }
    AuthenticationService.prototype.login = function (username, password) {
        var a = this.http.post('/api/users/authenticate/' + username, { username: username, password: password }).catch(this.handleError);
        // console.log(a);
        var b = a.pipe(Object(__WEBPACK_IMPORTED_MODULE_2_rxjs_operators__["map"])(function (user) {
            // login successful if there's a jwt token in the response
            var usr_string = user['_body'].toString();
            var user_obj = JSON.parse(usr_string);
            if (user && user_obj['token']) {
                // store user details and jwt token in local storage to keep user logged in between page refreshes
                localStorage.setItem('currentUser', JSON.stringify(user_obj));
            }
            return user_obj;
        }));
        // console.log(a);
        return b;
    };
    AuthenticationService.prototype.handleError = function (error) {
        // console.log(error);
        return __WEBPACK_IMPORTED_MODULE_3_rxjs__["Observable"].throw(error);
    };
    AuthenticationService.prototype.logout = function () {
        // remove user from local storage to log user out
        localStorage.removeItem('currentUser');
        localStorage.removeItem('userinfo');
    };
    AuthenticationService.prototype.getToken = function () {
        var local_data = JSON.parse(localStorage.getItem('currentUser'));
        return local_data['token'];
    };
    return AuthenticationService;
}());
AuthenticationService = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_http__["b" /* Http */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_http__["b" /* Http */]) === "function" && _a || Object])
], AuthenticationService);

var _a;
//# sourceMappingURL=authentication.service.js.map

/***/ }),

/***/ "../../../../../src/app/_services/index.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__alert_service__ = __webpack_require__("../../../../../src/app/_services/alert.service.ts");
/* harmony namespace reexport (by used) */ __webpack_require__.d(__webpack_exports__, "a", function() { return __WEBPACK_IMPORTED_MODULE_0__alert_service__["a"]; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__authentication_service__ = __webpack_require__("../../../../../src/app/_services/authentication.service.ts");
/* harmony namespace reexport (by used) */ __webpack_require__.d(__webpack_exports__, "b", function() { return __WEBPACK_IMPORTED_MODULE_1__authentication_service__["a"]; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__user_service__ = __webpack_require__("../../../../../src/app/_services/user.service.ts");
/* harmony namespace reexport (by used) */ __webpack_require__.d(__webpack_exports__, "c", function() { return __WEBPACK_IMPORTED_MODULE_2__user_service__["a"]; });



//# sourceMappingURL=index.js.map

/***/ }),

/***/ "../../../../../src/app/_services/question.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return QuestionService; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__authentication_service__ = __webpack_require__("../../../../../src/app/_services/authentication.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__models_quiz_detail_quiz__ = __webpack_require__("../../../../../src/app/_models/quiz-detail/quiz.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__models_question_question__ = __webpack_require__("../../../../../src/app/_models/question/question.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_rxjs_Observable__ = __webpack_require__("../../../../rxjs/Observable.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_rxjs_Observable___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_rxjs_Observable__);
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var httpOptions = {
    headers: new __WEBPACK_IMPORTED_MODULE_4__angular_http__["a" /* Headers */]({
        // 'Content-Type': 'application/json',
        // 'Authorization': 'my-auth-token',
        // 'Accept': 'application/json',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Headers': 'Access-Control-Allow-Origin',
    })
};
var QuestionService = (function () {
    function QuestionService(http, authService) {
        this.http = http;
        this.authService = authService;
    }
    QuestionService.prototype.getQuestionsByQuizId = function (id) {
        var getUrl = 'api/test';
        var questionArray = [];
        var url = getUrl + "/" + id;
        var res = this.http.get(url).catch(this.handleError);
        res.subscribe(function (data) {
            var JSONarray = JSON.parse(data._body);
            JSONarray.forEach(function (element) {
                questionArray.push(new __WEBPACK_IMPORTED_MODULE_2__models_question_question__["a" /* Question */](element.questionNumber, element.questionContent, element.optionA, element.optionB, element.optionC, element.optionD));
            });
        });
        return __WEBPACK_IMPORTED_MODULE_5_rxjs_Observable__["Observable"].of(questionArray);
    };
    QuestionService.prototype.getAllQuizDetail = function () {
        var getUrl = 'api/testdetail';
        var headers = new __WEBPACK_IMPORTED_MODULE_4__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            'Authorization': "Bearer " + this.authService.getToken(),
            'Accept': 'application/json',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Origin': '*',
        });
        var quizArray = [];
        this.http.get(getUrl, { headers: headers }).catch(this.handleError)
            .subscribe(function (data) {
            if (data.ok) {
                var JSONarray = JSON.parse(data._body);
                JSONarray.forEach(function (element) {
                    quizArray.push(new __WEBPACK_IMPORTED_MODULE_1__models_quiz_detail_quiz__["a" /* Quiz */](element.quizNumber, element.catalogy, element.language, element.questionQuantity, element.isCompleted));
                });
            }
        });
        return __WEBPACK_IMPORTED_MODULE_5_rxjs_Observable__["Observable"].of(quizArray);
    };
    QuestionService.prototype.submitAnswer = function (map, quizId) {
        var convMap = [];
        map.forEach(function (answer, questionId) {
            convMap.push({ answer: answer, questionId: questionId });
        });
        var headers = new __WEBPACK_IMPORTED_MODULE_4__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            'Authorization': "Bearer " + this.authService.getToken(),
            'Accept': 'application/json',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Origin': '*',
        });
        var getUrl = 'api/submit';
        var url = getUrl + "/" + quizId;
        return this.http.post(url, JSON.stringify(convMap), { headers: headers });
    };
    QuestionService.prototype.handleError = function (error) {
        return __WEBPACK_IMPORTED_MODULE_5_rxjs_Observable__["Observable"].throw(error);
    };
    return QuestionService;
}());
QuestionService = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_3__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_4__angular_http__["b" /* Http */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__angular_http__["b" /* Http */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_0__authentication_service__["a" /* AuthenticationService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_0__authentication_service__["a" /* AuthenticationService */]) === "function" && _b || Object])
], QuestionService);

var _a, _b;
//# sourceMappingURL=question.service.js.map

/***/ }),

/***/ "../../../../../src/app/_services/user.service.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return UserService; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__authentication_service__ = __webpack_require__("../../../../../src/app/_services/authentication.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_Observable__ = __webpack_require__("../../../../rxjs/Observable.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_Observable___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_rxjs_Observable__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__angular_common_http__ = __webpack_require__("../../../common/@angular/common/http.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var UserService = (function () {
    function UserService(http, authService, httpClient) {
        this.http = http;
        this.authService = authService;
        this.httpClient = httpClient;
        // private headers = new Headers({ 'Content-Type': 'application/json' });
        this.headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            'Authorization': "Bearer " + this.authService.getToken(),
            'Accept': 'application/json',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Origin': '*',
        });
        this.uploadHeaders = new __WEBPACK_IMPORTED_MODULE_4__angular_common_http__["c" /* HttpHeaders */]({
            'Content-Type': 'multipart/form-data',
            'Authorization': "Bearer " + this.authService.getToken(),
            'Accept': 'application/json',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Origin': '*',
        });
        this.dataUrl = 'http://localhost:3000';
    }
    UserService.prototype.getById = function (id) {
        return this.http.get('/api/users' + id);
    };
    UserService.prototype.getByToken = function (header) {
        var dataUrl = this.dataUrl + '/api/users';
        // console.log(header);
        return this.http.get(dataUrl, { headers: header }).catch(this.handleError);
    };
    UserService.prototype.register = function (user) {
        // console.log(user);
        return this.http.post('/api/users/register', user);
    };
    UserService.prototype.update = function (user) {
        return this.http.put("/users/" + user.id, user);
    };
    UserService.prototype.delete = function (id) {
        return this.http.delete("/users/" + id);
    };
    UserService.prototype.getSubmitDetail = function (quizId) {
        var headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            'Authorization': "Bearer " + this.authService.getToken(),
            'Accept': 'application/json',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Origin': '*',
        });
        var getUrl = "/api/submitdetail/" + quizId;
        return this.http.get(getUrl, { headers: headers }).catch(this.handleError);
    };
    UserService.prototype.submitAnswers = function () {
    };
    UserService.prototype.uploadImg = function () {
    };
    // postForm(url, form) {
    //     var header1 = new Headers().set('Content-Type', 'multipart/form-data');
    //     return this.http.post(url, form, {
    //       headers: header1,
    //     });
    // }
    UserService.prototype.postFile = function (fileToUpload) {
        var _this = this;
        var endpoint = '/api/upload';
        var formData = new FormData();
        console.log(fileToUpload);
        formData.append('fileKey', fileToUpload, fileToUpload.name);
        console.log(formData);
        return this.httpClient
            .post(endpoint, formData, { headers: this.uploadHeaders })
            .map(function () { return true; })
            .catch(function (e) { return _this.handleError(e); });
    };
    UserService.prototype.handleError = function (error) {
        return __WEBPACK_IMPORTED_MODULE_3_rxjs_Observable__["Observable"].throw(error);
    };
    return UserService;
}());
UserService = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["C" /* Injectable */])(),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__angular_http__["b" /* Http */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_http__["b" /* Http */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_0__authentication_service__["a" /* AuthenticationService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_0__authentication_service__["a" /* AuthenticationService */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_4__angular_common_http__["a" /* HttpClient */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__angular_common_http__["a" /* HttpClient */]) === "function" && _c || Object])
], UserService);

var _a, _b, _c;
//# sourceMappingURL=user.service.js.map

/***/ }),

/***/ "../../../../../src/app/app.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/app.component.html":
/***/ (function(module, exports) {

module.exports = "\r\n<router-outlet></router-outlet>"

/***/ }),

/***/ "../../../../../src/app/app.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AppComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};

var AppComponent = (function () {
    function AppComponent() {
        this.title = 'app';
    }
    return AppComponent;
}());
AppComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-root',
        template: __webpack_require__("../../../../../src/app/app.component.html"),
        styles: [__webpack_require__("../../../../../src/app/app.component.css")]
    })
], AppComponent);

//# sourceMappingURL=app.component.js.map

/***/ }),

/***/ "../../../../../src/app/app.module.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return AppModule; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__services_question_service__ = __webpack_require__("../../../../../src/app/_services/question.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__welcome_welcome_component__ = __webpack_require__("../../../../../src/app/welcome/welcome.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_platform_browser__ = __webpack_require__("../../../platform-browser/@angular/platform-browser.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__angular_common_http__ = __webpack_require__("../../../common/@angular/common/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__guards_auth_guard__ = __webpack_require__("../../../../../src/app/_guards/auth.guard.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__guards_logged_guard__ = __webpack_require__("../../../../../src/app/_guards/logged.guard.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__guards_confirm_test_guard__ = __webpack_require__("../../../../../src/app/_guards/confirm-test.guard.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__services__ = __webpack_require__("../../../../../src/app/_services/index.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__app_component__ = __webpack_require__("../../../../../src/app/app.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__directives_index__ = __webpack_require__("../../../../../src/app/_directives/index.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11__dashboard_user_detail_user_detail_component__ = __webpack_require__("../../../../../src/app/dashboard/user-detail/user-detail.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_12__landing_page_landing_page_component__ = __webpack_require__("../../../../../src/app/landing-page/landing-page.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_13__login_login_component__ = __webpack_require__("../../../../../src/app/login/login.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_14__register_register_component__ = __webpack_require__("../../../../../src/app/register/register.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_15__app_routing__ = __webpack_require__("../../../../../src/app/app.routing.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_16__angular_forms__ = __webpack_require__("../../../forms/@angular/forms.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_17__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_18__dashboard_dashboard_component__ = __webpack_require__("../../../../../src/app/dashboard/dashboard.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_19__quiz_detail_quiz_detail_component__ = __webpack_require__("../../../../../src/app/quiz-detail/quiz-detail.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_20__testing_testing_component__ = __webpack_require__("../../../../../src/app/testing/testing.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_21__result_result_component__ = __webpack_require__("../../../../../src/app/result/result.component.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};









// import { fakeBackendProvider , ErrorInterceptor, JwtInterceptor } from './_helpers/index';













var AppModule = (function () {
    function AppModule() {
    }
    return AppModule;
}());
AppModule = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_3__angular_core__["M" /* NgModule */])({
        declarations: [
            __WEBPACK_IMPORTED_MODULE_9__app_component__["a" /* AppComponent */],
            __WEBPACK_IMPORTED_MODULE_10__directives_index__["a" /* AlertComponent */],
            __WEBPACK_IMPORTED_MODULE_11__dashboard_user_detail_user_detail_component__["a" /* UserDetailComponent */],
            __WEBPACK_IMPORTED_MODULE_12__landing_page_landing_page_component__["a" /* LandingPageComponent */],
            __WEBPACK_IMPORTED_MODULE_13__login_login_component__["a" /* LoginComponent */],
            __WEBPACK_IMPORTED_MODULE_14__register_register_component__["a" /* RegisterComponent */],
            __WEBPACK_IMPORTED_MODULE_18__dashboard_dashboard_component__["a" /* DashboardComponent */],
            __WEBPACK_IMPORTED_MODULE_19__quiz_detail_quiz_detail_component__["a" /* QuizDetailComponent */],
            __WEBPACK_IMPORTED_MODULE_1__welcome_welcome_component__["a" /* WelcomeComponent */],
            __WEBPACK_IMPORTED_MODULE_20__testing_testing_component__["a" /* TestingComponent */],
            __WEBPACK_IMPORTED_MODULE_21__result_result_component__["a" /* ResultComponent */],
        ],
        imports: [
            __WEBPACK_IMPORTED_MODULE_2__angular_platform_browser__["a" /* BrowserModule */],
            __WEBPACK_IMPORTED_MODULE_17__angular_http__["c" /* HttpModule */],
            __WEBPACK_IMPORTED_MODULE_4__angular_common_http__["b" /* HttpClientModule */],
            __WEBPACK_IMPORTED_MODULE_16__angular_forms__["c" /* ReactiveFormsModule */],
            __WEBPACK_IMPORTED_MODULE_16__angular_forms__["b" /* FormsModule */],
            __WEBPACK_IMPORTED_MODULE_15__app_routing__["a" /* routing */]
        ],
        providers: [
            __WEBPACK_IMPORTED_MODULE_5__guards_auth_guard__["a" /* AuthGuard */],
            __WEBPACK_IMPORTED_MODULE_6__guards_logged_guard__["a" /* LoggedGuard */],
            __WEBPACK_IMPORTED_MODULE_7__guards_confirm_test_guard__["a" /* ConfirmTestGuard */],
            __WEBPACK_IMPORTED_MODULE_8__services__["b" /* AuthenticationService */],
            __WEBPACK_IMPORTED_MODULE_8__services__["c" /* UserService */],
            __WEBPACK_IMPORTED_MODULE_8__services__["a" /* AlertService */],
            // { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
            // { provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true },
            // fakeBackendProvider,
            __WEBPACK_IMPORTED_MODULE_0__services_question_service__["a" /* QuestionService */]
        ],
        bootstrap: [__WEBPACK_IMPORTED_MODULE_9__app_component__["a" /* AppComponent */]]
    })
], AppModule);

//# sourceMappingURL=app.module.js.map

/***/ }),

/***/ "../../../../../src/app/app.routing.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return routing; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__landing_page_landing_page_component__ = __webpack_require__("../../../../../src/app/landing-page/landing-page.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__testing_testing_component__ = __webpack_require__("../../../../../src/app/testing/testing.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__login_login_component__ = __webpack_require__("../../../../../src/app/login/login.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__register_register_component__ = __webpack_require__("../../../../../src/app/register/register.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__guards_auth_guard__ = __webpack_require__("../../../../../src/app/_guards/auth.guard.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__dashboard_dashboard_component__ = __webpack_require__("../../../../../src/app/dashboard/dashboard.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__guards_logged_guard__ = __webpack_require__("../../../../../src/app/_guards/logged.guard.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__quiz_detail_quiz_detail_component__ = __webpack_require__("../../../../../src/app/quiz-detail/quiz-detail.component.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__guards_confirm_test_guard__ = __webpack_require__("../../../../../src/app/_guards/confirm-test.guard.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__result_result_component__ = __webpack_require__("../../../../../src/app/result/result.component.ts");











var appRoutes = [
    {
        path: '', component: __WEBPACK_IMPORTED_MODULE_6__dashboard_dashboard_component__["a" /* DashboardComponent */], canActivate: [__WEBPACK_IMPORTED_MODULE_5__guards_auth_guard__["a" /* AuthGuard */]],
        children: [
            { path: 'quiz-detail', component: __WEBPACK_IMPORTED_MODULE_8__quiz_detail_quiz_detail_component__["a" /* QuizDetailComponent */] },
            { path: 'testing/:id', component: __WEBPACK_IMPORTED_MODULE_1__testing_testing_component__["a" /* TestingComponent */], canActivate: [__WEBPACK_IMPORTED_MODULE_9__guards_confirm_test_guard__["a" /* ConfirmTestGuard */]] },
            { path: '', redirectTo: 'quiz-detail', pathMatch: 'full', canActivate: [__WEBPACK_IMPORTED_MODULE_5__guards_auth_guard__["a" /* AuthGuard */]] },
            { path: 'result/:id', component: __WEBPACK_IMPORTED_MODULE_10__result_result_component__["a" /* ResultComponent */] }
        ]
    },
    { path: 'login', component: __WEBPACK_IMPORTED_MODULE_3__login_login_component__["a" /* LoginComponent */], canActivate: [__WEBPACK_IMPORTED_MODULE_7__guards_logged_guard__["a" /* LoggedGuard */]] },
    { path: 'register', component: __WEBPACK_IMPORTED_MODULE_4__register_register_component__["a" /* RegisterComponent */] },
    { path: '**', redirectTo: '' },
    { path: 'about', component: __WEBPACK_IMPORTED_MODULE_0__landing_page_landing_page_component__["a" /* LandingPageComponent */] }
];
var routing = __WEBPACK_IMPORTED_MODULE_2__angular_router__["d" /* RouterModule */].forRoot(appRoutes);
//# sourceMappingURL=app.routing.js.map

/***/ }),

/***/ "../../../../../src/app/dashboard/dashboard.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "ul.navbar-nav li.nav-item {\r\n    display: inline;\r\n}\r\n\r\n\r\n.row{\r\n    margin-top: 4%;\r\n}\r\n\r\n.navbar-custom {\r\n    background-color: #3c5fe7;\r\n    margin-bottom: 1%;\r\n}\r\n\r\n.navbar-custom .navbar-brand {\r\n    color: #ecf0f1;\r\n}", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/dashboard/dashboard.component.html":
/***/ (function(module, exports) {

module.exports = "<nav class=\"navbar navbar-custom\">\r\n  <a class=\"navbar-brand\">\r\n    <img src=\"assets/logo2.jpg\" (click)=\"refresh()\" style=\"margin-right:20px\" width=\"40\" height=\"40\" class=\" d-inline-block align-center\">\r\n    Dashboard\r\n  </a>\r\n  <div class=\"dropdown\">\r\n    <button class=\"btn btn-info dropdown-toggle\" type=\"button\" id=\"dropdownMenu2\" data-toggle=\"dropdown\"\r\n      aria-haspopup=\"true\" aria-expanded=\"false\">\r\n      Profile\r\n    </button>\r\n    <div class=\"dropdown-menu dropdown-menu-right\" aria-labelledby=\"dropdownMenu2\">\r\n      <!-- <a class=\"dropdown-item\" data-toggle=\"modal\" data-target=\"#modal_2\">Profile</a> -->\r\n      <a class=\"dropdown-item\" (click)=\"logout()\" >Log out</a>\r\n    </div>\r\n    <div class=\"modal fade\" id=\"modal_2\">\r\n        <div class=\"modal-dialog\">\r\n          <div class=\"modal-content\">\r\n            <!-- <div class=\"modal-header\">\r\n              <h5 class=\"modal-title\">Time: </h5>\r\n              <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n                <span aria-hidden=\"true\">&times;</span>\r\n              </button>\r\n            </div> -->\r\n            <div class=\"modal-body\">\r\n              <form>\r\n                <!-- <app-user-edit></app-user-edit> -->\r\n              </form>\r\n            </div>\r\n            <!-- <div class=\"modal-footer\">\r\n              <a class=\"btn btn-primary\" data-dismiss=\"modal\" (click)=\"onConfirm()\">Go to test now!</a>\r\n              <a class=\"btn btn-secondary\" data-dismiss=\"modal\">Back</a>\r\n            </div> -->\r\n          </div>\r\n        </div>\r\n      </div>\r\n  </div>\r\n</nav>\r\n<div class=\"row\" style=\"width: 100%\">\r\n  <div class=\"col-md-3\">\r\n    <app-dashboard-user-detail></app-dashboard-user-detail>\r\n  </div>\r\n  <div class=\"col col-md-9 bg-light ali\">\r\n    <router-outlet></router-outlet>\r\n  </div>\r\n</div>"

/***/ }),

/***/ "../../../../../src/app/dashboard/dashboard.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return DashboardComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services__ = __webpack_require__("../../../../../src/app/_services/index.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_http__ = __webpack_require__("../../../http/@angular/http.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_Observable__ = __webpack_require__("../../../../rxjs/Observable.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_Observable___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_rxjs_Observable__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__models__ = __webpack_require__("../../../../../src/app/_models/index.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var DashboardComponent = (function () {
    function DashboardComponent(authService, userService) {
        this.authService = authService;
        this.userService = userService;
        this.userinfo = [];
        this.headers = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["a" /* Headers */]({
            'Content-Type': 'application/json',
            'Authorization': "Bearer " + this.authService.getToken(),
            'Accept': 'application/json',
            'Access-Control-Allow-Headers': 'Content-Type',
            'Access-Control-Allow-Origin': '*',
        });
        this.httpOptions = new __WEBPACK_IMPORTED_MODULE_2__angular_http__["d" /* RequestOptions */]({ headers: this.headers });
    }
    DashboardComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.renderUserInfo();
        setTimeout(function () { localStorage.setItem('userinfo', JSON.stringify(_this.userinfo)); }, 300);
        // console.log(this.userinfo);
    };
    DashboardComponent.prototype.logout = function () {
        console.log('logging out');
        this.authService.logout();
        window.location.reload();
    };
    DashboardComponent.prototype.refresh = function () {
        window.location.reload();
    };
    DashboardComponent.prototype.renderUserInfo = function () {
        var _this = this;
        // this.userService.getByToken(this.headers);
        // localStorage.setItem('avatarLink', 'abc');
        var a = this.userService.getByToken(this.headers).catch(this.handleError);
        a.subscribe(function (data) {
            _this.avatarLink = JSON.parse(data._body)[0].avatarLink;
            // var user = JSON.parse(data._body)[0];
            // this.userinfo = new User(user.firstName, user.lastName, user.username, '', user.email, user.birthday, user.gender, user.role, 
            // user.school, user.id, user.avatarLink);
            var JSONarray = JSON.parse(data._body);
            JSONarray.forEach(function (element) {
                _this.userinfo.push(new __WEBPACK_IMPORTED_MODULE_4__models__["a" /* User */](element.firstName, element.lastName, element.username, element.password, element.email, element.birthday, element.gender, element.role, element.school, element.id, element.avatarLink));
            });
        });
        // Observable.of(this.userinfo).subscribe(user => this.userinfo = user);
    };
    DashboardComponent.prototype.handleError = function (error) {
        return __WEBPACK_IMPORTED_MODULE_3_rxjs_Observable__["Observable"].throw(error);
    };
    return DashboardComponent;
}());
DashboardComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-dashboard',
        template: __webpack_require__("../../../../../src/app/dashboard/dashboard.component.html"),
        styles: [__webpack_require__("../../../../../src/app/dashboard/dashboard.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services__["b" /* AuthenticationService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services__["b" /* AuthenticationService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__services__["c" /* UserService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services__["c" /* UserService */]) === "function" && _b || Object])
], DashboardComponent);

var _a, _b;
//# sourceMappingURL=dashboard.component.js.map

/***/ }),

/***/ "../../../../../src/app/dashboard/user-detail/user-detail.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".row{\r\n    margin-top: 4%;\r\n}\r\n\r\n.navbar-custom {\r\n    background-color: #3c5fe7;\r\n    margin-bottom: 1%;\r\n}\r\n\r\n.navbar-custom .navbar-brand {\r\n    color: #ecf0f1;\r\n}", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/dashboard/user-detail/user-detail.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"row-12 bg-light\">\r\n  <img src=\"{{imgLink}}\" alt=\"This image can not be displayed\"\r\n    class=\"img-fluid img-thumbnail max-width: 100% height: auto rounded-circle center\">\r\n</div>\r\n<div class=\"row bg-light\" style=\"text-align: center\">\r\n  <div class=\"col-md-2\"></div>\r\n  <div class=\"col col-md-8 text-md-center\">\r\n    <div class=\"card\">\r\n      <div class=\"card-header\">Total Score: </div>\r\n      <div class=\"card-body\">100/100</div>\r\n    </div>\r\n  </div>\r\n</div>\r\n<div>\r\n  <label>Firstame: {{firstname}}</label><br>\r\n  <label>Lastname: {{lastname}}</label><br>\r\n  <label>Username: {{username}}</label><br>\r\n  <label>Email: {{email}}</label><br>\r\n  <label>School: {{school}}</label><br>\r\n</div>\r\n<!-- <form enctype=\"multipart/form-data\" method=\"POST\" action=\"/upload\">\r\n  <input type=\"file\" name=\"file\" />\r\n  <input type=\"submit\" value=\"Upload!\" />\r\n</form> -->\r\n<div class=\"form-group\">\r\n  <label for=\"file\">Choose File</label>\r\n  <input type=\"file\" id=\"file\" (change)=\"handleFileInput($event.target.files)\">\r\n  <input type=\"submit\" value=\"Upload!\" (click)=\"uploadFile()\" />\r\n</div>"

/***/ }),

/***/ "../../../../../src/app/dashboard/user-detail/user-detail.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return UserDetailComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__services__ = __webpack_require__("../../../../../src/app/_services/index.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var UserDetailComponent = (function () {
    function UserDetailComponent(userService) {
        this.userService = userService;
        this.fileToUpload = null;
    }
    UserDetailComponent.prototype.ngOnInit = function () {
        this.userinfo = JSON.parse(localStorage.getItem('userinfo'));
        this.firstname = this.userinfo[0].firstName;
        this.lastname = this.userinfo[0].lastName;
        this.username = this.userinfo[0].username;
        this.email = this.userinfo[0].email;
        this.birthday = this.userinfo[0].birthday;
        this.school = this.userinfo[0].school;
        this.imgLink = this.userinfo[0].avatarLink;
        // console.log(this.imgLink);
    };
    UserDetailComponent.prototype.handleFileInput = function (files) {
        this.fileToUpload = files.item(0);
        // console.log(this.fileToUpload);
    };
    UserDetailComponent.prototype.uploadFile = function () {
        this.userService.postFile(this.fileToUpload).subscribe(function (data) {
            // console.log(data);
        }, function (error) {
            console.log(error);
        });
    };
    return UserDetailComponent;
}());
UserDetailComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-dashboard-user-detail',
        template: __webpack_require__("../../../../../src/app/dashboard/user-detail/user-detail.component.html"),
        styles: [__webpack_require__("../../../../../src/app/dashboard/user-detail/user-detail.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__services__["c" /* UserService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__services__["c" /* UserService */]) === "function" && _a || Object])
], UserDetailComponent);

var _a;
//# sourceMappingURL=user-detail.component.js.map

/***/ }),

/***/ "../../../../../src/app/landing-page/landing-page.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".card {\r\n    padding-top: 6%;\r\n}\r\n\r\n.btn-primary {\r\n    margin-top: 3%;\r\n    margin-left: 2%;\r\n    margin-right: 2%;\r\n    margin-bottom: 20%;\r\n}\r\n\r\n.navbar-custom {\r\n    background-color: #3c5fe7;\r\n    margin-bottom: 1%;\r\n}\r\n\r\n.navbar-custom .navbar-brand {\r\n    color: #ecf0f1;\r\n}\r\n.btn {\r\n  border-radius:0;\r\n}\r\n#a_1 {\r\n\tfont-size: 20px;\r\n\tfloat: right;\r\n\tcolor: #ffffff;\r\n\tpadding: 0 15px 0 0;\r\n}\r\n#a_1:hover {\r\n\tcolor: #e6e6e6;\r\n\ttext-decoration: none;\r\n}\r\n\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/landing-page/landing-page.component.html":
/***/ (function(module, exports) {

module.exports = "<nav class=\"navbar navbar-custom\">\r\n  <a href=\"/nhom-9/html/welcome/welcome.html\" class=\"navbar-brand\">\r\n      <img src=\"assets/logo2.jpg\" alt=\"logo\" style=\"width:40px\">\r\n  </a>\r\n  <a id=\"a_1\" href=\"about.html\">\r\n        <i class=\"fas fa-bars\"></i> About\r\n  </a>\r\n</nav>\r\n<div class=\"wel container\">\r\n  <div class=\"card bg-light\">\r\n      <div class=\"card-body\">\r\n          <h1 class=\"display-1 text-center\">Welcome</h1>\r\n      </div>\r\n      <div class=\"row\">\r\n          <div class=\"col-md-12 text-md-center\"><a class=\"btn btn-lg btn-primary\" href=\"../dashboard/dashboard.html\">Getting Started.</a></div>\r\n      </div>\r\n  </div>"

/***/ }),

/***/ "../../../../../src/app/landing-page/landing-page.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LandingPageComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};

var LandingPageComponent = (function () {
    function LandingPageComponent() {
    }
    LandingPageComponent.prototype.ngOnInit = function () {
    };
    return LandingPageComponent;
}());
LandingPageComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-landing-page',
        template: __webpack_require__("../../../../../src/app/landing-page/landing-page.component.html"),
        styles: [__webpack_require__("../../../../../src/app/landing-page/landing-page.component.css")]
    }),
    __metadata("design:paramtypes", [])
], LandingPageComponent);

//# sourceMappingURL=landing-page.component.js.map

/***/ }),

/***/ "../../../../../src/app/login/login.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".btn-primary {\r\n    margin-top: 3%;\r\n    margin-left: 2%;\r\n    margin-right: 2%;\r\n    margin-bottom: 20%;\r\n}\r\n\r\n.navbar-custom {\r\n    background-color: #3c5fe7;\r\n    margin-bottom: 1%;\r\n}\r\n\r\n.navbar-custom .navbar-brand {\r\n    color: #ecf0f1;\r\n}\r\n#a_1 {\r\n\tfont-size: 20px;\r\n\tfloat: right;\r\n\tcolor: #ffffff;\r\n\tpadding: 0 15px 0 0;\r\n}\r\n#a_1:hover {\r\n\tcolor: #e6e6e6;\r\n\ttext-decoration: none;\r\n}\r\n#div12 {\r\n    padding-top: 100px;\r\n    background: #F1F1F1;\r\n    width: 60%;\r\n    margin-left: 20%;\r\n    border: 2px solid #bfbfbf;\r\n}\r\n#div12 h2 {\r\n    padding-bottom: 10%;\r\n    padding-left: 40%;\r\n}\r\n.login-container{\r\n    margin-top: 2%;\r\n    margin-bottom: 2%;\r\n}\r\n.login-form{\r\n    padding: 5%;\r\n    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);\r\n}\r\n.login-form h3{\r\n    text-align: center;\r\n    color: #333;\r\n}\r\n.login-container form{\r\n    padding: 3%;\r\n}\r\n.login-form .btnSubmit{\r\n    width: 50%;\r\n    border-radius: 1rem;\r\n    padding: 1.5%;\r\n    border: none;\r\n    cursor: pointer;\r\n    font-weight: 600;\r\n    color: #fff;\r\n    background-color: #0062cc;\r\n}\r\n.login-form-1 .ForgetPwd{\r\n    text-align: center;\r\n    color: #0062cc;\r\n    font-weight: 600;\r\n    text-decoration: none;\r\n}\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/login/login.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"container login-container\">\r\n  <div class=\"row justify-content-center\">\r\n    <div class=\"col-md-6 login-form\">\r\n        <h3>Log in</h3>\r\n        <form [formGroup]=\"loginForm\" (ngSubmit)=\"onSubmit()\">\r\n          <div class=\"form-group\">\r\n            <label for=\"username\">Username</label>\r\n            <input type=\"text\" formControlName=\"username\" class=\"form-control\"\r\n              [ngClass]=\"{ 'is-invalid': submitted && f.username.errors }\" />\r\n            <div *ngIf=\"submitted && f.username.errors\" class=\"invalid-feedback\">\r\n              <div *ngIf=\"f.username.errors.required\">Username is required</div>\r\n            </div>\r\n          </div>\r\n          <div class=\"form-group\">\r\n            <label for=\"password\">Password</label>\r\n            <input type=\"password\" formControlName=\"password\" class=\"form-control\"\r\n              [ngClass]=\"{ 'is-invalid': submitted && f.password.errors }\" />\r\n            <div *ngIf=\"submitted && f.password.errors\" class=\"invalid-feedback\">\r\n              <div *ngIf=\"f.password.errors.required\">Password is required</div>\r\n            </div>\r\n          </div>\r\n          <div class=\"form-group\">\r\n            <button [disabled]=\"loading\" class=\"btnSubmit\">Login</button>\r\n            <img *ngIf=\"loading\"\r\n              src=\"data:image/gif;base64,R0lGODlhEAAQAPIAAP///wAAAMLCwkJCQgAAAGJiYoKCgpKSkiH/C05FVFNDQVBFMi4wAwEAAAAh/hpDcmVhdGVkIHdpdGggYWpheGxvYWQuaW5mbwAh+QQJCgAAACwAAAAAEAAQAAADMwi63P4wyklrE2MIOggZnAdOmGYJRbExwroUmcG2LmDEwnHQLVsYOd2mBzkYDAdKa+dIAAAh+QQJCgAAACwAAAAAEAAQAAADNAi63P5OjCEgG4QMu7DmikRxQlFUYDEZIGBMRVsaqHwctXXf7WEYB4Ag1xjihkMZsiUkKhIAIfkECQoAAAAsAAAAABAAEAAAAzYIujIjK8pByJDMlFYvBoVjHA70GU7xSUJhmKtwHPAKzLO9HMaoKwJZ7Rf8AYPDDzKpZBqfvwQAIfkECQoAAAAsAAAAABAAEAAAAzMIumIlK8oyhpHsnFZfhYumCYUhDAQxRIdhHBGqRoKw0R8DYlJd8z0fMDgsGo/IpHI5TAAAIfkECQoAAAAsAAAAABAAEAAAAzIIunInK0rnZBTwGPNMgQwmdsNgXGJUlIWEuR5oWUIpz8pAEAMe6TwfwyYsGo/IpFKSAAAh+QQJCgAAACwAAAAAEAAQAAADMwi6IMKQORfjdOe82p4wGccc4CEuQradylesojEMBgsUc2G7sDX3lQGBMLAJibufbSlKAAAh+QQJCgAAACwAAAAAEAAQAAADMgi63P7wCRHZnFVdmgHu2nFwlWCI3WGc3TSWhUFGxTAUkGCbtgENBMJAEJsxgMLWzpEAACH5BAkKAAAALAAAAAAQABAAAAMyCLrc/jDKSatlQtScKdceCAjDII7HcQ4EMTCpyrCuUBjCYRgHVtqlAiB1YhiCnlsRkAAAOwAAAAAAAAAAAA==\" />\r\n          </div>\r\n          <div class=\"form-group\">\r\n              <a [routerLink]=\"['/register']\" class=\"ForgetPwd\">Register</a>\r\n          </div>\r\n        </form>\r\n    </div>\r\n  </div>\r\n</div>"

/***/ }),

/***/ "../../../../../src/app/login/login.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return LoginComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_forms__ = __webpack_require__("../../../forms/@angular/forms.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_operators__ = __webpack_require__("../../../../rxjs/operators.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_operators___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_rxjs_operators__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__services__ = __webpack_require__("../../../../../src/app/_services/index.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var LoginComponent = (function () {
    function LoginComponent(formBuilder, route, router, authenticationService, alertService) {
        this.formBuilder = formBuilder;
        this.route = route;
        this.router = router;
        this.authenticationService = authenticationService;
        this.alertService = alertService;
        this.loading = false;
        this.submitted = false;
    }
    LoginComponent.prototype.ngOnInit = function () {
        this.loginForm = this.formBuilder.group({
            username: ['', __WEBPACK_IMPORTED_MODULE_2__angular_forms__["d" /* Validators */].required],
            password: ['', __WEBPACK_IMPORTED_MODULE_2__angular_forms__["d" /* Validators */].required]
        });
        // reset login status
        this.authenticationService.logout();
        // get return url from route parameters or default to '/'
        this.returnUrl = this.route.snapshot.queryParams['returnUrl'] || '/';
    };
    Object.defineProperty(LoginComponent.prototype, "f", {
        // convenience getter for easy access to form fields
        get: function () { return this.loginForm.controls; },
        enumerable: true,
        configurable: true
    });
    LoginComponent.prototype.onSubmit = function () {
        var _this = this;
        this.submitted = true;
        // stop here if form is invalid
        if (this.loginForm.invalid) {
            return;
        }
        this.loading = true;
        this.authenticationService.login(this.f.username.value, this.f.password.value)
            .pipe(Object(__WEBPACK_IMPORTED_MODULE_3_rxjs_operators__["first"])())
            .subscribe(function (data) {
            _this.router.navigate([_this.returnUrl]);
        }, function (error) {
            //   console.log(error);
            _this.alertService.error(JSON.parse(error._body).err);
            _this.loading = false;
        });
    };
    LoginComponent.prototype.refresh = function () {
        window.location.reload();
    };
    LoginComponent.prototype.onClickAbout = function () {
        this.router.navigate(['/about']);
    };
    return LoginComponent;
}());
LoginComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-login',
        template: __webpack_require__("../../../../../src/app/login/login.component.html"),
        styles: [__webpack_require__("../../../../../src/app/login/login.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__angular_forms__["a" /* FormBuilder */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_forms__["a" /* FormBuilder */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* ActivatedRoute */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["a" /* ActivatedRoute */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_4__services__["b" /* AuthenticationService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__services__["b" /* AuthenticationService */]) === "function" && _d || Object, typeof (_e = typeof __WEBPACK_IMPORTED_MODULE_4__services__["a" /* AlertService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__services__["a" /* AlertService */]) === "function" && _e || Object])
], LoginComponent);

var _a, _b, _c, _d, _e;
//# sourceMappingURL=login.component.js.map

/***/ }),

/***/ "../../../../../src/app/quiz-detail/quiz-detail.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, "\r\n.row{\r\n    margin-top: 4%;\r\n}\r\n\r\n.navbar-custom {\r\n    background-color: #3c5fe7;\r\n    margin-bottom: 1%;\r\n}\r\n\r\n.navbar-custom .navbar-brand {\r\n    color: #ecf0f1;\r\n}\r\n:btn-primary{\r\n    margin: 5%;\r\n    color:white;\r\n}", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/quiz-detail/quiz-detail.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"row\">\r\n  <div class=\"col-sm-6 col-6\" *ngFor=\"let quiz of quizs let i= index\">\r\n    <div class=\" card\">\r\n      <h5 class=\"card-header\">Test {{quiz?.quizNumber + 1}}:</h5>\r\n      <div class=\"card-body\">\r\n        <p class=\"card-text\">{{quiz?.catalogy}}</p>\r\n        <p class=\"card-text\">{{quiz?.language}}</p>\r\n        <div *ngIf=\"quiz.isCompleted; else elseBlock\">\r\n          <a style=\"color:white\" class=\"btn btn-primary\" (click)=\"onReview(i)\" data-toggle=\"modal\"\r\n            data-target=\"#modal_2\">Review</a>\r\n        </div>\r\n        <ng-template #elseBlock>\r\n          <a style=\"color:white\" class=\"btn btn-primary\" (click)=\"onGetQuiz(i)\" data-toggle=\"modal\"\r\n            data-target=\"#modal_1\">Get Quizs</a>\r\n        </ng-template>\r\n        <div class=\"modal fade\" id=\"modal_1\">\r\n          <div class=\"modal-dialog\">\r\n            <div class=\"modal-content\">\r\n              <div class=\"modal-header\">\r\n                <h5 class=\"modal-title\">Take this quiz: </h5>\r\n                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n                  <span aria-hidden=\"true\">&times;</span>\r\n                </button>\r\n              </div>\r\n              <div class=\"modal-body\">\r\n                <p>You are going to do the test and you won't be able to out!</p>\r\n              </div>\r\n              <div class=\"modal-footer\">\r\n                <a style=\"color:white\" class=\"btn btn-primary\" data-dismiss=\"modal\" (click)=\"onConfirm(0)\">Go to test\r\n                  now!</a>\r\n                <a style=\"color:white\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Back</a>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n        <div class=\"modal fade\" id=\"modal_2\">\r\n          <div class=\"modal-dialog\">\r\n            <div class=\"modal-content\">\r\n              <div class=\"modal-header\">\r\n                <h5 class=\"modal-title\">Review: </h5>\r\n                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n                  <span aria-hidden=\"true\">&times;</span>\r\n                </button>\r\n              </div>\r\n              <div class=\"modal-body\">\r\n                <p>You will review your work on {{quizs[testId].quizNumber + 1}}</p>\r\n              </div>\r\n              <div class=\"modal-footer\">\r\n                <a class=\"btn btn-primary\" data-dismiss=\"modal\" (click)=\"onConfirm(1)\">Go to test now!</a>\r\n                <a class=\"btn btn-secondary\" data-dismiss=\"modal\">Back</a>\r\n              </div>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>"

/***/ }),

/***/ "../../../../../src/app/quiz-detail/quiz-detail.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return QuizDetailComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__services_question_service__ = __webpack_require__("../../../../../src/app/_services/question.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};



var QuizDetailComponent = (function () {
    function QuizDetailComponent(router, questionService) {
        this.router = router;
        this.questionService = questionService;
        this.testId = 1;
    }
    QuizDetailComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.questionService.getAllQuizDetail().subscribe(function (quizs) { return _this.quizs = quizs; });
    };
    QuizDetailComponent.prototype.onGetQuiz = function (i) {
        this.testId = i;
    };
    QuizDetailComponent.prototype.onReview = function (i) {
        this.testId = i;
    };
    QuizDetailComponent.prototype.onConfirm = function (option) {
        if (option === 0) {
            this.router.navigate(['/testing', this.testId]);
        }
        else {
            this.router.navigate(['/result', this.testId]);
        }
    };
    return QuizDetailComponent;
}());
QuizDetailComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["o" /* Component */])({
        selector: 'app-quiz-detail',
        template: __webpack_require__("../../../../../src/app/quiz-detail/quiz-detail.component.html"),
        styles: [__webpack_require__("../../../../../src/app/quiz-detail/quiz-detail.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__angular_router__["c" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_router__["c" /* Router */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_0__services_question_service__["a" /* QuestionService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_0__services_question_service__["a" /* QuestionService */]) === "function" && _b || Object])
], QuizDetailComponent);

var _a, _b;
//# sourceMappingURL=quiz-detail.component.js.map

/***/ }),

/***/ "../../../../../src/app/register/register.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"container\">\r\n  <br>\r\n  <h2 class=\"text-center\">Join Quiz. </h2>\r\n  <hr>\r\n  <div class=\"row justify-content-center\">\r\n    <div class=\"col-md-6\">\r\n      <div class=\"card\">\r\n        <header class=\"card-header\">\r\n          <a routerLink=\"/login\" class=\"float-right btn btn-outline-primary mt-1\">Log in</a>\r\n          <h4 class=\"card-title mt-2\">Sign up</h4>\r\n        </header>\r\n        <article class=\"card-body\">\r\n          <form [formGroup]=\"registerForm\" (ngSubmit)=\"onSubmit()\">\r\n            <div class=\"form-row\">\r\n              <div class=\"col form-group\">\r\n                <label>First name: (*) </label>\r\n                <input type=\"text\" formControlName=\"firstName\" class=\"form-control\"\r\n                  [ngClass]=\"{ 'is-invalid': submitted && f.firstName.errors }\" />\r\n                <div *ngIf=\"submitted && f.firstName.errors\" class=\"invalid-feedback\">\r\n                  <div *ngIf=\"f.firstName.errors.required\">First Name is required</div>\r\n                </div>\r\n              </div>\r\n              <div class=\"col form-group\">\r\n                <label>Last name: (*)</label>\r\n                <input type=\"text\" formControlName=\"lastName\" class=\"form-control\"\r\n                  [ngClass]=\"{ 'is-invalid': submitted && f.lastName.errors }\" />\r\n                <div *ngIf=\"submitted && f.lastName.errors\" class=\"invalid-feedback\">\r\n                  <div *ngIf=\"f.lastName.errors.required\">Last Name is required</div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"form-group\">\r\n              <label>Username: (*)</label>\r\n              <input type=\"text\" formControlName=\"username\" class=\"form-control\"\r\n                [ngClass]=\"{ 'is-invalid': submitted && f.username.errors }\" />\r\n              <div *ngIf=\"submitted && f.username.errors\" class=\"invalid-feedback\">\r\n                <div *ngIf=\"f.username.errors.required\">Username is required</div>\r\n              </div>\r\n            </div>\r\n            <div class=\"form-group\">\r\n              <label>Password: (*)</label>\r\n              <input type=\"password\" formControlName=\"password\" class=\"form-control\"\r\n                [ngClass]=\"{ 'is-invalid': submitted && f.password.errors }\" />\r\n              <div *ngIf=\"submitted && f.password.errors\" class=\"invalid-feedback\">\r\n                <div *ngIf=\"f.password.errors.required\">Password is required</div>\r\n                <div *ngIf=\"f.password.errors.minlength\">Password must be at least 6 characters</div>\r\n              </div>\r\n            </div>\r\n            <div class=\"form-group\">\r\n              <label>Retype password: (*)</label>\r\n              <input type=\"password\" formControlName=\"confirmPassword\" class=\"form-control\"\r\n                [ngClass]=\"{ 'is-invalid': submitted && f.password.errors }\" />\r\n            </div>\r\n            <div class=\"form-group\">\r\n              <label>Email address</label>\r\n              <input type=\"email\" class=\"form-control\" placeholder=\"\">\r\n              <small class=\"form-text text-muted\">We'll never share your email with anyone else.</small>\r\n            </div>\r\n            <div class=\"form-row\">\r\n              <div class=\"form-group col-md-6\">\r\n                <label>Your birthday: </label>\r\n                <label class=\"form-check form-check-inline\">\r\n                  <input class=\"form-control\" type=\"date\">\r\n                </label>\r\n              </div>\r\n              <div class=\"form-group col-md-6\">\r\n                <label>Gender: (*)</label>\r\n                <div class=\"form-group\">\r\n                  <div class=\"form-check form-check-inline\">\r\n                    <input class=\"form-check-input\" type=\"radio\" name=\"gender\">\r\n                    <span class=\"form-check-label\"> Male </span>\r\n                  </div>\r\n                  <div class=\"form-check form-check-inline\">\r\n                    <input class=\"form-check-input\" type=\"radio\" name=\"gender\">\r\n                    <span class=\"form-check-label\"> Female</span>\r\n                  </div>\r\n                </div>\r\n\r\n              </div>\r\n            </div>\r\n            <div class=\"form-row\">\r\n              <div class=\"form-group col-md-6\">\r\n                <label>You are: (*)</label>\r\n                <select id=\"job\" class=\"form-control\">\r\n                  <option selected=\"\">Student</option>\r\n                  <option>Teacher</option>\r\n                  <option>Other</option>\r\n                </select>\r\n              </div>\r\n              <div class=\"form-group col-md-6\">\r\n                <label>Your school: (*)</label>\r\n                <input type=\"text\" formControlName=\"school\" class=\"form-control\"\r\n                  [ngClass]=\"{ 'is-invalid': submitted && f.school.errors }\" />\r\n                <div *ngIf=\"submitted && f.school.errors\" class=\"invalid-feedback\">\r\n                  <div *ngIf=\"f.school.errors.required\">School name is required</div>\r\n                </div>\r\n              </div>\r\n            </div>\r\n            <div class=\"form-group\">\r\n              <button class=\"btn btn-primary btn-block\"> Register </button>\r\n            </div>\r\n            <small class=\"text-muted\">By clicking the 'Sign Up' button, you confirm that you accept our <br> Terms of\r\n              use and Privacy Policy.</small>\r\n          </form>\r\n        </article>\r\n        <div class=\"border-top card-body text-center\">\r\n          <div class=\"row justify-content-center\">\r\n            <h4>Have an account?\r\n              <button class=\"btn btn-primary\"> Log in </button>\r\n            </h4>\r\n          </div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>"

/***/ }),

/***/ "../../../../../src/app/register/register.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return RegisterComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_forms__ = __webpack_require__("../../../forms/@angular/forms.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_operators__ = __webpack_require__("../../../../rxjs/operators.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_rxjs_operators___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_rxjs_operators__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__services__ = __webpack_require__("../../../../../src/app/_services/index.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};





var RegisterComponent = (function () {
    function RegisterComponent(formBuilder, router, userService, alertService) {
        this.formBuilder = formBuilder;
        this.router = router;
        this.userService = userService;
        this.alertService = alertService;
        this.loading = false;
        this.submitted = false;
    }
    RegisterComponent.prototype.ngOnInit = function () {
        this.registerForm = this.formBuilder.group({
            firstName: ['', __WEBPACK_IMPORTED_MODULE_2__angular_forms__["d" /* Validators */].required],
            lastName: ['', __WEBPACK_IMPORTED_MODULE_2__angular_forms__["d" /* Validators */].required],
            username: ['', __WEBPACK_IMPORTED_MODULE_2__angular_forms__["d" /* Validators */].required],
            password: ['', [__WEBPACK_IMPORTED_MODULE_2__angular_forms__["d" /* Validators */].required, __WEBPACK_IMPORTED_MODULE_2__angular_forms__["d" /* Validators */].minLength(6)]],
            confirmPassword: [''],
            email: [''],
            birthday: [''],
            gender: [''],
            role: [''],
            school: ['', __WEBPACK_IMPORTED_MODULE_2__angular_forms__["d" /* Validators */].required]
        });
    };
    Object.defineProperty(RegisterComponent.prototype, "f", {
        // convenience getter for easy access to form fields
        get: function () { return this.registerForm.controls; },
        enumerable: true,
        configurable: true
    });
    RegisterComponent.prototype.onSubmit = function () {
        var _this = this;
        this.submitted = true;
        // stop here if form is invalid
        if (this.registerForm.invalid) {
            return;
        }
        this.loading = true;
        this.userService.register(this.registerForm.value)
            .pipe(Object(__WEBPACK_IMPORTED_MODULE_3_rxjs_operators__["first"])())
            .subscribe(function (data) {
            _this.alertService.success('Registration successful', true);
            // this.router.navigate(['/login']);
        }, function (error) {
            _this.alertService.error(error);
            _this.loading = false;
        });
    };
    RegisterComponent.prototype.refresh = function () {
        window.location.reload();
    };
    return RegisterComponent;
}());
RegisterComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({ selector: 'app-register', template: __webpack_require__("../../../../../src/app/register/register.component.html") }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_2__angular_forms__["a" /* FormBuilder */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_forms__["a" /* FormBuilder */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_4__services__["c" /* UserService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__services__["c" /* UserService */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_4__services__["a" /* AlertService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__services__["a" /* AlertService */]) === "function" && _d || Object])
], RegisterComponent);

var _a, _b, _c, _d;
//# sourceMappingURL=register.component.js.map

/***/ }),

/***/ "../../../../../src/app/result/result.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".card{\r\n    margin: 1%\r\n}", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/result/result.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"container\">\r\n  <div class=\"card\">\r\n    <header class=\"card-header\">\r\n      <a routerLink=\"/dashboard\" class=\"float-right btn btn-outline-primary mt-1 display-4\"\r\n        style=\"font-size:28px\">Back</a>\r\n      <h1 class=\"display-4\" style=\"margin-left:4%; color:darkblue\">TEST {{quizId + 1}}: </h1>\r\n    </header>\r\n    <div class=\"card-body\">\r\n      <div class=\"card\" *ngFor=\"let result of results; let i = index\">\r\n        <div class=\"card-body\">\r\n          <div class=\"row\">\r\n            <div class=\"col-2\">\r\n              <h5 class=\"card-title\" style=\"color:blue\">Question {{i + 1}}:</h5>\r\n            </div>\r\n            <div class=\"col-10\">\r\n              <div *ngIf=\"result.accuracy; else elseBlock\">\r\n                <h5 style=\"color:forestgreen\">True</h5>\r\n              </div>\r\n              <ng-template #elseBlock>\r\n                <h5 style=\"color:darkred\">False</h5>\r\n              </ng-template>\r\n            </div>\r\n          </div>\r\n          <p class=\"media-body pb-3 mb-0 small lh-125 border-bottom border-gray\">\r\n            <strong class=\"d-block text-gray-dark\">Question: </strong> {{result.questionContent}}\r\n          </p>\r\n          <p class=\"media-body pb-3 mb-0 small lh-125 border-bottom border-gray\">\r\n            <strong class=\"d-block text-gray-dark\">Your Answer: </strong> {{result.yourAnswer}}\r\n          </p>\r\n          <p class=\"media-body pb-3 mb-0 small lh-125 border-bottom border-gray\">\r\n            <strong class=\"d-block text-gray-dark\">True Answer: </strong> {{result.trueAnswer}}\r\n          </p>\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>"

/***/ }),

/***/ "../../../../../src/app/result/result.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return ResultComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__services_user_service__ = __webpack_require__("../../../../../src/app/_services/user.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__models_result__ = __webpack_require__("../../../../../src/app/_models/result.ts");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};




var ResultComponent = (function () {
    function ResultComponent(userService, route) {
        this.userService = userService;
        this.route = route;
        this.results = [];
    }
    ResultComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.quizId = parseInt(this.route.snapshot.paramMap.get('id'), 10);
        this.userService.getSubmitDetail(1).subscribe(function (data) {
            var JsonData = JSON.parse(data._body);
            JsonData.forEach(function (element) {
                _this.results.push(new __WEBPACK_IMPORTED_MODULE_3__models_result__["a" /* Result */](element.questionContent, element.studentAnswer, element.trueAnswer));
            });
        });
    };
    ResultComponent.prototype.getAccuracy = function (accuracy) {
        return (accuracy) ? 'True' : 'False';
    };
    return ResultComponent;
}());
ResultComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_1__angular_core__["o" /* Component */])({
        selector: 'app-result',
        template: __webpack_require__("../../../../../src/app/result/result.component.html"),
        styles: [__webpack_require__("../../../../../src/app/result/result.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_0__services_user_service__["a" /* UserService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_0__services_user_service__["a" /* UserService */]) === "function" && _a || Object, typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_2__angular_router__["a" /* ActivatedRoute */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__angular_router__["a" /* ActivatedRoute */]) === "function" && _b || Object])
], ResultComponent);

var _a, _b;
//# sourceMappingURL=result.component.js.map

/***/ }),

/***/ "../../../../../src/app/testing/testing.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".btn-primary {\r\n    margin: 0.3%;\r\n    font-size: 16.5px\r\n}\r\n.btn-success {\r\n    margin: 0.3%;\r\n    font-size: 16.5px\r\n}\r\n.btn-info{\r\n    margin: 0.5%;\r\n    margin-bottom: 3%;\r\n}\r\n.navbar-custom {\r\n    background-color: #3c5fe7;\r\n}\r\n\r\n.navbar-custom .navbar-brand {\r\n    color: #ecf0f1;\r\n}\r\n.row{\r\n    margin-bottom: 2%;\r\n}\r\n.quiz-container {\r\ndisplay: block;\r\nposition: relative;\r\npadding-left: 35px;\r\nmargin-bottom: 12px;\r\ncursor: pointer;\r\nfont-size: 22px;\r\n-webkit-user-select: none;\r\n-moz-user-select: none;\r\n-ms-user-select: none;\r\nuser-select: none;\r\n}\r\n\r\n/* Hide the browser's default radio button */\r\n.quiz-container input {\r\nposition: absolute;\r\nopacity: 0;\r\ncursor: pointer;\r\n}\r\n\r\n/* Create a custom radio button */\r\n.checkmark {\r\nposition: absolute;\r\ntop: 0;\r\nleft: 0;\r\nheight: 25px;\r\nwidth: 25px;\r\nbackground-color: #eee;\r\nborder-radius: 50%;\r\n}\r\n\r\n/* On mouse-over, add a grey background color */\r\n.quiz-container:hover input ~ .checkmark {\r\nbackground-color: #ccc;\r\n}\r\n\r\n/* When the radio button is checked, add a blue background */\r\n.quiz-container input:checked ~ .checkmark {\r\nbackground-color: #2196F3;\r\n}\r\n\r\n/* Create the indicator (the dot/circle - hidden when not checked) */\r\n.checkmark:after {\r\ncontent: \"\";\r\nposition: absolute;\r\ndisplay: none;\r\n}\r\n\r\n/* Show the indicator (dot/circle) when checked */\r\n.quiz-container input:checked ~ .checkmark:after {\r\ndisplay: block;\r\n}\r\n\r\n/* Style the indicator (dot/circle) */\r\n.quiz-container .checkmark:after {\r\n    top: 9px;\r\n    left: 9px;\r\n    width: 8px;\r\n    height: 8px;\r\n    border-radius: 50%;\r\n    background: white;\r\n}\r\n#a_5 {\r\n    font-size: 20px;\r\n    float: right;\r\n    color: #ffffff;\r\n    padding: 0 15px 0 0;\r\n}\r\n#a_5:hover {\r\n    color: #e6e6e6;\r\n    text-decoration: none;\r\n}", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/testing/testing.component.html":
/***/ (function(module, exports) {

module.exports = "<div class=\"row justify-content-center\">\r\n  <div *ngFor=\" let question of questions; let i = index \" class=\"'btn btn-lg \"\r\n    [ngClass]=\"{'btn-primary': currentIndex != i, 'btn-success':currentIndex == i }\" (click)=\"changeQuestionTo(i)\">\r\n    Question {{i+1}}\r\n  </div>\r\n</div>\r\n<div class=\"container\">\r\n  <div class=\"col-md-12\">\r\n    <div class=\"card\" *ngIf=\"selectedQuestion\">\r\n      <div class=\"card-header text-md-left\">\r\n        <h5 class=\"display-6\">{{selectedQuestion.questionContent}}</h5>\r\n      </div>\r\n      <div class=\"card-body text-md-left\">\r\n        <div class=\"col-12\">\r\n          <div class=\"radio\">\r\n            <label><input type=\"radio\" name=\"optradio\" #checkbox>\r\n              <span id=\"A\" (click)=\"onClickCheckbox($event)\" >{{selectedQuestion.optionA}}</span>\r\n            </label>\r\n          </div>\r\n          <div class=\"radio\">\r\n            <label><input type=\"radio\" name=\"optradio\" #checkbox>\r\n              <span id=\"B\" (click)=\"onClickCheckbox($event)\">{{selectedQuestion.optionB}}</span>\r\n            </label>\r\n          </div>\r\n          <div class=\"radio\">\r\n            <label><input type=\"radio\" name=\"optradio\" #checkbox>\r\n              <span id=\"C\" (click)=\"onClickCheckbox($event)\">{{selectedQuestion.optionC}}</span>\r\n            </label>\r\n          </div>\r\n          <div class=\"radio\">\r\n            <label><input type=\"radio\" name=\"optradio\" #checkbox>\r\n              <span id=\"D\" (click)=\"onClickCheckbox($event)\">{{selectedQuestion.optionD}}</span>\r\n            </label>\r\n          </div>\r\n        </div>\r\n      </div>\r\n      <div class=\"row\">\r\n        <div class=\"col-md-6 text-md-left\">\r\n          <button class=\"btn btn-lg btn-primary\" (click)=\"onClickPrev()\">\r\n            <i class=\"fas fa-arrow-left\"></i>\r\n            Back\r\n          </button>\r\n        </div>\r\n        <div class=\"col-md-6 text-md-right\">\r\n          <button class=\"btn btn-lg btn-primary\" (click)=\"onClickNext()\">\r\n            <i class=\"fas fa-arrow-right\"></i>\r\n            Next\r\n          </button>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col-md-12 text-md-right\">\r\n        <button class=\"btn btn-lg btn-success\" (click)=\"onClickSubmit()\">\r\n          Submit\r\n        </button>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>"

/***/ }),

/***/ "../../../../../src/app/testing/testing.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return TestingComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__services_user_service__ = __webpack_require__("../../../../../src/app/_services/user.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_rxjs_operators__ = __webpack_require__("../../../../rxjs/operators.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_rxjs_operators___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_rxjs_operators__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__services_question_service__ = __webpack_require__("../../../../../src/app/_services/question.service.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__angular_platform_browser__ = __webpack_require__("../../../platform-browser/@angular/platform-browser.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};






var TestingComponent = (function () {
    function TestingComponent(titleService, route, questionService, userService, router) {
        this.titleService = titleService;
        this.route = route;
        this.questionService = questionService;
        this.userService = userService;
        this.router = router;
        this.map = new Map();
        this.currentIndex = 0;
    }
    TestingComponent.prototype.ngOnInit = function () {
        var _this = this;
        this.quizId = parseInt(this.route.snapshot.paramMap.get('id'), 10);
        this.titleService.setTitle('Test ' + (this.quizId + 1));
        this.questionService.getQuestionsByQuizId(parseInt(this.route.snapshot.paramMap.get('id'), 10))
            .finally(function () {
            setTimeout(function () { return _this.length = _this.questions.length; }, 100);
            setTimeout(function () { return _this.update(); }, 300);
        })
            .subscribe(function (quesitons) { return _this.questions = quesitons; });
    };
    TestingComponent.prototype.changeQuestionTo = function (i) {
        this.currentIndex = i;
        this.update();
    };
    TestingComponent.prototype.onClickCheckbox = function (event) {
        var elementId = event.target.id;
        this.map.set(this.questions[this.currentIndex].questionNumber, elementId);
    };
    TestingComponent.prototype.onClickPrev = function () {
        this.currentIndex = (this.length + this.currentIndex - 1) % this.length;
        this.update();
    };
    TestingComponent.prototype.onClickNext = function () {
        this.currentIndex = (this.length + this.currentIndex + 1) % this.length;
        this.update();
    };
    TestingComponent.prototype.onClickSubmit = function () {
        this.questionService.submitAnswer(this.map, this.quizId).pipe(Object(__WEBPACK_IMPORTED_MODULE_1_rxjs_operators__["first"])())
            .subscribe(function (data) {
            console.log(';');
        }, function (error) {
            console.log(';dd');
        });
        this.router.navigate(['/dashboard']);
    };
    TestingComponent.prototype.update = function () {
        this.selectedQuestion = this.questions[this.currentIndex];
        this.cbElement.forEach(function (element) { return element.nativeElement.checked = false; });
    };
    TestingComponent.prototype.onClickLogo = function () {
        this.router.navigate(['/test']);
    };
    TestingComponent.prototype.onLogOut = function () {
        this.router.navigate(['/welcome']);
    };
    TestingComponent.prototype.onQuizNotFound = function () {
        this.router.navigate(['/dashboard']);
    };
    return TestingComponent;
}());
__decorate([
    Object(__WEBPACK_IMPORTED_MODULE_3__angular_core__["_17" /* ViewChildren */])('checkbox'),
    __metadata("design:type", typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_3__angular_core__["Z" /* QueryList */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_3__angular_core__["Z" /* QueryList */]) === "function" && _a || Object)
], TestingComponent.prototype, "cbElement", void 0);
TestingComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_3__angular_core__["o" /* Component */])({
        selector: 'app-testing',
        template: __webpack_require__("../../../../../src/app/testing/testing.component.html"),
        styles: [__webpack_require__("../../../../../src/app/testing/testing.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_b = typeof __WEBPACK_IMPORTED_MODULE_5__angular_platform_browser__["b" /* Title */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_5__angular_platform_browser__["b" /* Title */]) === "function" && _b || Object, typeof (_c = typeof __WEBPACK_IMPORTED_MODULE_4__angular_router__["a" /* ActivatedRoute */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__angular_router__["a" /* ActivatedRoute */]) === "function" && _c || Object, typeof (_d = typeof __WEBPACK_IMPORTED_MODULE_2__services_question_service__["a" /* QuestionService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_2__services_question_service__["a" /* QuestionService */]) === "function" && _d || Object, typeof (_e = typeof __WEBPACK_IMPORTED_MODULE_0__services_user_service__["a" /* UserService */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_0__services_user_service__["a" /* UserService */]) === "function" && _e || Object, typeof (_f = typeof __WEBPACK_IMPORTED_MODULE_4__angular_router__["c" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_4__angular_router__["c" /* Router */]) === "function" && _f || Object])
], TestingComponent);

var _a, _b, _c, _d, _e, _f;
//# sourceMappingURL=testing.component.js.map

/***/ }),

/***/ "../../../../../src/app/welcome/welcome.component.css":
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__("../../../../css-loader/lib/css-base.js")(false);
// imports


// module
exports.push([module.i, ".card {\r\n    padding-top: 6%;\r\n}\r\n\r\n.btn-primary {\r\n    margin-top: 3%;\r\n    margin-left: 2%;\r\n    margin-right: 2%;\r\n    margin-bottom: 20%;\r\n}\r\n\r\n.navbar-custom {\r\n    background-color: #3c5fe7;\r\n    margin-bottom: 1%;\r\n}\r\n\r\n.navbar-custom .navbar-brand {\r\n    color: #ecf0f1;\r\n}\r\n.btn {\r\n  border-radius:0;\r\n}\r\n#a_1 {\r\n\tfont-size: 20px;\r\n\tfloat: right;\r\n\tcolor: #ffffff;\r\n\tpadding: 0 15px 0 0;\r\n}\r\n#a_1:hover {\r\n\tcolor: #e6e6e6;\r\n\ttext-decoration: none;\r\n}\r\n\r\n", ""]);

// exports


/*** EXPORTS FROM exports-loader ***/
module.exports = module.exports.toString();

/***/ }),

/***/ "../../../../../src/app/welcome/welcome.component.html":
/***/ (function(module, exports) {

module.exports = "<nav class=\"navbar navbar-custom\">\r\n  <a  class=\"navbar-brand\">\r\n    <img src=\"assets/logo2.jpg\" alt=\"logo\" style=\"width:40px\" (click)=\"refresh()\">\r\n  </a>\r\n  <a id=\"a_1\" >\r\n    <i class=\"fas fa-bars\"></i> About\r\n  </a>\r\n</nav>\r\n<div class=\"wel container\">\r\n  <div class=\"card bg-light\">\r\n    <div class=\"card-body\">\r\n      <h1 class=\"display-1 text-center\">Welcome</h1>\r\n    </div>\r\n    <div class=\"row\">\r\n      <div class=\"col-md-12 text-md-center\"><a class=\"btn btn-lg btn-primary\" (click)=\"onContinue()\" >Getting Started.</a></div>\r\n    </div>\r\n  </div>\r\n</div>\r\n"

/***/ }),

/***/ "../../../../../src/app/welcome/welcome.component.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return WelcomeComponent; });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_router__ = __webpack_require__("../../../router/@angular/router.es5.js");
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};


var WelcomeComponent = (function () {
    function WelcomeComponent(router) {
        this.router = router;
    }
    WelcomeComponent.prototype.ngOnInit = function () {
    };
    WelcomeComponent.prototype.refresh = function () {
        window.location.reload();
    };
    WelcomeComponent.prototype.onContinue = function () {
        this.router.navigate(['/dashboard']);
    };
    return WelcomeComponent;
}());
WelcomeComponent = __decorate([
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["o" /* Component */])({
        selector: 'app-welcome',
        template: __webpack_require__("../../../../../src/app/welcome/welcome.component.html"),
        styles: [__webpack_require__("../../../../../src/app/welcome/welcome.component.css")]
    }),
    __metadata("design:paramtypes", [typeof (_a = typeof __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */] !== "undefined" && __WEBPACK_IMPORTED_MODULE_1__angular_router__["c" /* Router */]) === "function" && _a || Object])
], WelcomeComponent);

var _a;
//# sourceMappingURL=welcome.component.js.map

/***/ }),

/***/ "../../../../../src/environments/environment.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return environment; });
// The file contents for the current environment will overwrite these during build.
// The build system defaults to the dev environment which uses `environment.ts`, but if you do
// `ng build --env=prod` then `environment.prod.ts` will be used instead.
// The list of which env maps to which file can be found in `.angular-cli.json`.
// The file contents for the current environment will overwrite these during build.
var environment = {
    production: false
};
//# sourceMappingURL=environment.js.map

/***/ }),

/***/ "../../../../../src/main.ts":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__angular_core__ = __webpack_require__("../../../core/@angular/core.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__angular_platform_browser_dynamic__ = __webpack_require__("../../../platform-browser-dynamic/@angular/platform-browser-dynamic.es5.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__app_app_module__ = __webpack_require__("../../../../../src/app/app.module.ts");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__environments_environment__ = __webpack_require__("../../../../../src/environments/environment.ts");




if (__WEBPACK_IMPORTED_MODULE_3__environments_environment__["a" /* environment */].production) {
    Object(__WEBPACK_IMPORTED_MODULE_0__angular_core__["_23" /* enableProdMode */])();
}
Object(__WEBPACK_IMPORTED_MODULE_1__angular_platform_browser_dynamic__["a" /* platformBrowserDynamic */])().bootstrapModule(__WEBPACK_IMPORTED_MODULE_2__app_app_module__["a" /* AppModule */])
    .catch(function (err) { return console.log(err); });
//# sourceMappingURL=main.js.map

/***/ }),

/***/ 0:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__("../../../../../src/main.ts");


/***/ })

},[0]);
//# sourceMappingURL=main.bundle.js.map
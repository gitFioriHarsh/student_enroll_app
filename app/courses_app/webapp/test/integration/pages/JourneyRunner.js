sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/student/app/coursesapp/test/integration/pages/CoursesList",
	"com/student/app/coursesapp/test/integration/pages/CoursesObjectPage"
], function (JourneyRunner, CoursesList, CoursesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/student/app/coursesapp') + '/test/flp.html#app-preview',
        pages: {
			onTheCoursesList: CoursesList,
			onTheCoursesObjectPage: CoursesObjectPage
        },
        async: true
    });

    return runner;
});


using StudentEnrollmentAPI as service from '../../srv/service';


annotate service.Courses with @( 
// creating columns
UI.LineItem: [
    {
        $Type : 'UI.DataField',
        Value : ID,
        Label : '{i18n>CourseId}',
    },
    {
        $Type : 'UI.DataField',
        Value : Coursename,
        Label : '{i18n>CourseName}',
    },
    {
        $Type : 'UI.DataField',
        Value : fees,
        Label : '{i18n>Fees}',
    },
    {
        $Type : 'UI.DataField',
        Value : duration,
        Label : '{i18n>Duration}',
    },
    {
        $Type : 'UI.DataField',
        Value : createdBy,
    },
    {
        $Type : 'UI.DataField',
        Value : trainer.trainername,
        Label : '{i18n>Trainername}',
    },
    
],
    UI.SelectionFields : [
        Coursename,
        ID,
        trainer_ID,
    ],
);
annotate service.Courses with {
    Coursename @Common.Label : 'Coursename'
};

annotate service.Courses with {
    ID @Common.Label : 'ID'
};

annotate service.Courses with {
    trainer @Common.Label : 'trainer_ID'
};



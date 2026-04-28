using StudentEnrollmentAPI as service from '../../srv/service';


annotate service.Courses with @(
    // creating columns
    UI.LineItem       : [
        {
            $Type: 'UI.DataField',
            Value: ID,
            Label: '{i18n>CourseId}',
        },
        {
            $Type: 'UI.DataField',
            Value: Coursename,
            Label: '{i18n>CourseName}',
        },
        {
            $Type: 'UI.DataField',
            Value: fees,
            Label: '{i18n>Fees}',
        },
        {
            $Type: 'UI.DataField',
            Value: duration,
            Label: '{i18n>Duration}',
        },
        {
            $Type: 'UI.DataField',
            Value: createdBy,
        },
        {
            $Type: 'UI.DataField',
            Value: trainer.trainername,
            Label: '{i18n>Trainername}',
        },

    ],
    UI.HeaderInfo     : {TypeNamePlural: 'Courses', },
    UI.SelectionFields: [
        ID,
        trainer_ID,
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Course details',
            ID : 'Coursedetails',
            Target : '@UI.FieldGroup#Coursedetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>EnrolledStudent}',
            ID : 'i18nEnrolledStudent',
            Target : 'Enrollments/@UI.LineItem#i18nEnrolledStudent',
        },
    ],
    UI.FieldGroup #Coursedetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : Coursename,
            },
            {
                $Type : 'UI.DataField',
                Value : duration,
                Label : 'duration',
            },
            {
                $Type : 'UI.DataField',
                Value : fees,
                Label : 'fees',
            },
            {
                $Type : 'UI.DataField',
                Value : trainer_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : trainer.expertise,
                Label : 'expertise',
            },
            {
                $Type : 'UI.DataField',
                Value : trainer.trainername,
                Label : 'trainername',
            },
        ],
    },
);

annotate service.Courses with {
    Coursename @Common.Label: 'Coursename'
};

annotate service.Courses with {
    ID @(
        Common.Label: 'ID',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Courses',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Coursename',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'duration',
                },
            ],
            Label : '{i18n>CourseId}',
        },
        Common.ValueListWithFixedValues : false,
        )
};

annotate service.Courses with {
    trainer @Common.Label: 'trainer_ID'
};
annotate service.Enrollments with @(
    UI.LineItem #i18nEnrolledStudent : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : enrolledDate,
            Label : 'enrolledDate',
        },
        {
            $Type : 'UI.DataField',
            Value : student.emailId,
            Label : 'emailId',
        },
        {
            $Type : 'UI.DataField',
            Value : student.city,
            Label : 'city',
        },
        {
            $Type : 'UI.DataField',
            Value : status.code,
            Label : 'code',
        },
        {
            $Type : 'UI.DataField',
            Value : feesPaid,
            Label : 'feesPaid',
        },
    ]
);


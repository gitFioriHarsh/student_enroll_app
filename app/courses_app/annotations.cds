using StudentEnrollmentAPI as service from '../../srv/service';

annotate service.Courses with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type: 'UI.DataField',
                Label: 'Course Name',
                Value: Coursename,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Duration',
                Value: duration,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Fees',
                Value: fees,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Trainer ID',
                Value: trainer_ID,
            },
            {
                $Type: 'UI.DataField',
                Value: trainer.trainername,
                Label: 'Trainer Name',
            },
            {
                $Type: 'UI.DataField',
                Value: trainer.expertise,
                Label: 'Expertise',
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'Course Details',
        Target: '@UI.FieldGroup#GeneratedGroup',
    },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Enrollments',
            ID : 'Enrollments',
            Target : 'Enrollments/@UI.LineItem#Enrollments',
        }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'Course ID',
            Value: ID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Course Name',
            Value: Coursename,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Duration',
            Value: duration,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Fees',
            Value: fees,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Trainer ID',
            Value: trainer_ID,
        },
        {
            $Type: 'UI.DataField',
            Value: trainer.trainername,
            Label: 'Trainer Name',
        },
        {
            $Type: 'UI.DataField',
            Value: trainer.expertise,
            Label: 'Expertise',
        },
    ],
    UI.HeaderInfo     : {TypeNamePlural: 'Courses', },
    UI.SelectionFields : [
        Coursename,
        duration,
        fees,
        trainer_ID,
    ],
);

annotate service.Courses with {
    trainer @(
        Common.ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Trainers',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: trainer_ID,
                    ValueListProperty: 'ID',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'trainername',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'expertise',
                },
            ],
        },
        Common.Text : trainer.trainername,
        Common.Text.@UI.TextArrangement : #TextSeparate,
        Common.FieldControl : #Mandatory,
        Common.Label : 'Trainer',
        Common.ValueListWithFixedValues : false,
        )
};
annotate service.Trainers with {
    trainername @(
        Common.FieldControl : #ReadOnly,
        Common.Label : 'Trainer Name',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Trainers',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : trainername,
                    ValueListProperty : 'trainername',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
    )
};

annotate service.Trainers with {
    expertise @Common.FieldControl : #ReadOnly
};

annotate service.Courses with {
    Coursename @(
        Common.Label : 'Course Name',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Courses',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Coursename,
                    ValueListProperty : 'Coursename',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
    )
};

annotate service.Courses with {
    duration @(
        Common.Label : 'duration',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Courses',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : duration,
                    ValueListProperty : 'duration',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
    )
};

annotate service.Courses with {
    fees @(
        Common.Label : 'fees',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Courses',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : fees,
                    ValueListProperty : 'fees',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
    )
};

annotate service.Enrollments with @(
    UI.LineItem #Enrollments : [
        {
            $Type : 'UI.DataField',
            Value : feesPaid,
            Label : 'Fees Paid',
        },
        {
            $Type : 'UI.DataField',
            Value : enrolledDate,
            Label : 'Enrolled Date',
        },
        {
            $Type : 'UI.DataField',
            Value : student_ID,
            Label : 'Student ID',
        },
        {
            $Type : 'UI.DataField',
            Value : student.Studentname,
            Label : 'Student Name',
        },
        {
            $Type : 'UI.DataField',
            Value : status_code,
            Label : 'Status code',
        },
        {
            $Type : 'UI.DataField',
            Value : status.desc,
            Label : 'desc',
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Value : course_ID,
            Label : 'course_ID',
        },
    ]
);

annotate service.Enrollments with {
    student @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Students',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : student_ID,
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Studentname',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'emailId',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'address',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'city',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'qualification',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'dateOfBirth',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'age',
                },
            ],
            Label : 'Students',
        },
        Common.ValueListWithFixedValues : false,
        Common.FieldControl : #Mandatory,
)};

annotate service.Enrollments with {
    status @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Status',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : status_code,
                    ValueListProperty : 'code',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'desc',
                },
            ],
            Label : 'Status',
        },
        Common.ValueListWithFixedValues : true,
        Common.FieldControl : #Mandatory,
)};

annotate service.Students with {
    Studentname @Common.FieldControl : #ReadOnly
};

annotate service.Status with {
    desc @Common.FieldControl : #ReadOnly
};


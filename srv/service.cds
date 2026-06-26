using {application.tables as datamodel} from '../db/data-model';


service StudentEnrollmentAPI {
    entity Students     as projection on datamodel.Students;
    entity Trainers     as projection on datamodel.Trainers;
    @odata.draft.enabled
    entity Courses      as projection on datamodel.Courses;
    entity Status       as projection on datamodel.Status;
    entity Enrollments as projection on datamodel.Enrollments;
}
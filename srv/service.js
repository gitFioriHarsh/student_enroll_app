const cds = require('@sap/cds');
class StudentEnrollmentAPI extends cds.ApplicationService {
    init() {
        const { Courses } = this.entities;

        this.before('UPDATE', 'Courses.drafts', async (req) => {
            debugger;
            if(req.data?.fees < 0) {
                req.error(400, 'Fees cannot be negative.');
            }
        });             
        return super.init();
    }
}

module.exports = { StudentEnrollmentAPI };
/**
 * @author eduardo.bisso - dev-builder
 */
public class Survey {

    public String title;

    public String description;

    public Date startDate;

    public Date dueDate;

    public List<SurveyQuestion> questions;

    public Survey() {

        this.questions = new List<SurveyQuestion>();

    }

    public Survey withTitle (String title) {

        this.title = title;
        return this;
    }

    public Survey withDescription (String description) {

        this.description = description;
        return this;
    }

    public Survey withStartDate (Date startDate) {

        this.startDate = startDate;
        return this;
    }

    public Survey withDueDate (Date dueDate) {

        this.dueDate = dueDate;
        return this;
    }

    public Survey addQuestion (SurveyQuestion question) {

        questions.add( question );
        return this;
    }

}
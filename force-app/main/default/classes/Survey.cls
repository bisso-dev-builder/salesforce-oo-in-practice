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

}
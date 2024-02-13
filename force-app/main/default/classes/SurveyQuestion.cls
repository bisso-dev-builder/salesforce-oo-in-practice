/**
 * @author eduardo.bisso - dev-builder
 */
public abstract class SurveyQuestion {
    
    public String title;

    public String description;

    public SurveyQuestionType type;
       
    public SurveyQuestion(SurveyQuestionType type) {
        this.type = type;
    }

}
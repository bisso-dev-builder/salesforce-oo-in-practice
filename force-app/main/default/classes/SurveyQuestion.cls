/**
 * @author eduardo.bisso - dev-builder
 */
public abstract class SurveyQuestion {
    
    public String title;

    public String description;

    @TestVisible
    private SurveyQuestionType type;
        
    public SurveyQuestion(SurveyQuestionType type) {
        this.type = type;
    }

    public SurveyQuestion withTitle (String title) {

        this.title = title;
        return this;
    }

    public SurveyQuestion withDescription (String description) {

        this.description = description;
        return this;
    }

}
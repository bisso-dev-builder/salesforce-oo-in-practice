/**
 * @author eduardo.bisso - dev-builder
 */
public virtual class SurveyQuestionMultipleChoice extends SurveyQuestion {

    public List<SurveyQuestionOption> options;

    public SurveyQuestionMultipleChoice() {
        this(SurveyQuestionType.MULTIPLE_CHOICE);
    }
    
    public SurveyQuestionMultipleChoice (SurveyQuestionType type) {
        super(type);
        this.options = new List<SurveyQuestionOption>();
    }

}
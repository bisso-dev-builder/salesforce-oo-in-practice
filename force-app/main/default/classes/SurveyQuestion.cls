/**
 * @author eduardo.bisso - dev-builder
 */
public class SurveyQuestion {
    
    public String title;

    public String description;

    public SurveyQuestionType type;

    public String code;

    public List<SurveyLinearScale> scales;

    public List<SurveyQuestionOption> options;
        
    public SurveyQuestion(SurveyQuestionType type) {
        this.type = type;
        this.scales = new List<SurveyLinearScale>();
        this.options = new List<SurveyQuestionOption>();
    }

}
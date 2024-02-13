/**
 * @author eduardo.bisso - dev-builder
 */
public class SurveyQuestionCode extends SurveyQuestion {

    public String code;

    public SurveyQuestionCode() {
        super(SurveyQuestionType.CODE_TEXT);
    }

    public SurveyQuestionCode withCode (String code) {
        this.code = code;
        return this;
    }
}
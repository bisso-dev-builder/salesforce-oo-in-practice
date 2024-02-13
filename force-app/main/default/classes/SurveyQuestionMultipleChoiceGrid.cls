/**
 * @author eduardo.bisso - dev-builder
 */
public class SurveyQuestionMultipleChoiceGrid extends SurveyQuestionMultipleChoice {

    public List<SurveyQuestionOption> rows;

    public SurveyQuestionMultipleChoiceGrid() {
        super(SurveyQuestionType.MULTIPLE_CHOICE_GRID);
        this.rows = new List<SurveyQuestionOption>();
    }
}
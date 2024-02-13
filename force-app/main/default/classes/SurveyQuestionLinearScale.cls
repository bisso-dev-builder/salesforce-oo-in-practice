/**
 * @author eduardo.bisso - dev-builder
 */
public class SurveyQuestionLinearScale extends SurveyQuestion {

    public List<SurveyLinearScale> scales;

    public SurveyQuestionLinearScale() {
        super(SurveyQuestionType.LINEAR_SCALE);
        this.scales = new List<SurveyLinearScale>();
    }
}
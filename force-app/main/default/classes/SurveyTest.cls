/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class SurveyTest {

    @isTest
    public static void shouldCreateSurveys () {
        
        Survey survey = new Survey ();
        survey.title = 'Curso de OO do Bisso';
        survey.description = 'Avalie seus conhecimentos em OO aplicado à plataforma Salesforce';
        survey.startDate = Date.today().addDays(5);
        survey.dueDate =  Date.today().addDays(30);

        SurveyQuestion shortText = new SurveyQuestionShortText();
        shortText.title = 'Comente sobre sobrecarga';
        
        survey.questions.add ( shortText );

        Assert.areEqual( SurveyQuestionType.SHORT_TEXT , shortText.type);

        SurveyQuestion paragraph = new SurveyQuestionParagraph();
        paragraph.title = 'Descreva a aplicabilidade do polimorfismo';

        survey.questions.add ( paragraph );

        Assert.areEqual( SurveyQuestionType.PARAGRAPH , paragraph.type);

        SurveyQuestionCode codeQuestion = new SurveyQuestionCode();
        codeQuestion.title = 'Analise o código a seguir e comente os problemas encontrados';
        codeQuestion.code = 'public class HelloBisso {\n \t default String message \n}';
        
        Assert.areEqual( SurveyQuestionType.CODE_TEXT , codeQuestion.type);
        Assert.isNotNull( codeQuestion.code );

        survey.questions.add ( codeQuestion );

        Assert.areEqual(3, survey.questions.size());

        SurveyQuestionLinearScale linearScale = new SurveyQuestionLinearScale();
        linearScale.title = 'Avalie seu grau de satisfação com o curso do bisso';
        linearScale.scales.add ( new SurveyLinearScale (0, 'Insatisfeito'));
        linearScale.scales.add ( new SurveyLinearScale (1, 'Um cadin insatisfeito'));
        linearScale.scales.add ( new SurveyLinearScale (2, 'Satisfeito'));
        linearScale.scales.add ( new SurveyLinearScale (3, 'Satisfeito mais um cadin'));
        linearScale.scales.add ( new SurveyLinearScale (4, 'Super mega satisfeito'));

        survey.questions.add ( linearScale );

        Assert.areEqual( SurveyQuestionType.LINEAR_SCALE , linearScale.type);
        Assert.areEqual( 5 , linearScale.scales.size());

        SurveyQuestionMultipleChoice multipleChoice = new SurveyQuestionMultipleChoice();
        multipleChoice.title = 'Identifique o grau de conhecimento em Polimorfismo';
        multipleChoice.options.add ( new SurveyQuestionOption ('Desconheço'));
        multipleChoice.options.add ( new SurveyQuestionOption ('Conheço'));
        multipleChoice.options.add ( new SurveyQuestionOption ('Pratico'));
        multipleChoice.options.add ( new SurveyQuestionOption ('Domino'));

        survey.questions.add ( multipleChoice );

        Assert.areEqual( SurveyQuestionType.MULTIPLE_CHOICE , multipleChoice.type);
        Assert.areEqual( 4 , multipleChoice.options.size());


        SurveyQuestionMultipleChoiceGrid multipleChoiceGrid = new SurveyQuestionMultipleChoiceGrid();
        multipleChoice.title = 'Identifique o grau de conhecimento sobre os temas abaixo';

        multipleChoiceGrid.rows.add ( new SurveyQuestionOption ('Classe abstrata'));
        multipleChoiceGrid.rows.add ( new SurveyQuestionOption ('Sobrecarga'));
        multipleChoiceGrid.rows.add ( new SurveyQuestionOption ('Sobrescrita'));
        multipleChoiceGrid.rows.add ( new SurveyQuestionOption ('Polimorfismo'));
        multipleChoiceGrid.rows.add ( new SurveyQuestionOption ('Herança'));

        multipleChoiceGrid.options.add ( new SurveyQuestionOption ('Desconheço'));
        multipleChoiceGrid.options.add ( new SurveyQuestionOption ('Conheço'));
        multipleChoiceGrid.options.add ( new SurveyQuestionOption ('Pratico'));
        multipleChoiceGrid.options.add ( new SurveyQuestionOption ('Domino'));

        survey.questions.add ( multipleChoiceGrid );

        Assert.areEqual( SurveyQuestionType.MULTIPLE_CHOICE_GRID , multipleChoiceGrid.type);
        Assert.areEqual( 4 , multipleChoiceGrid.options.size());
        Assert.areEqual( 5 , multipleChoiceGrid.rows.size());



        Assert.areEqual(6, survey.questions.size());

        System.debug(survey);

    }

}
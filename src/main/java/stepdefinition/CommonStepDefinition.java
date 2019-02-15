package stepdefinition;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.WebDriver;
import pages.CreateEntityPage;
import pages.NewPage;
import static org.assertj.core.api.Assertions.assertThat;

public class CommonStepDefinition {
    private static final String CREATE_ENTITY_PAGE = "https://test.com/createEntity";
    protected static WebDriver driver;
    private CreateEntityPage createEntityPage;
    private NewPage newPage;

    @Given("^Create Entity page is opened$")
    public void create_entity_page_is_opened() {
        driver.navigate().to(CREATE_ENTITY_PAGE);
    }

    @When("^I choose \"([^\"]+)\" in Entity Type field$")
    public void choose_entity_type_by_text(String entityType) {
        createEntityPage.chooseEntityType(entityType);
    }

    @When("^I insert \"([^\"]+)\" in Entity Name field$")
    public void insert_entity_name_by_text(String entityName) {
        createEntityPage.insertTextToEntityName(entityName);
    }

    @When("^I check Private box$")
    public void check_private_box () {
        createEntityPage.clickPrivateCheckbox();
    }

    @When("^I Insert \"([^\"]+)\" in Blackbox Name field$")
    public void insert_blackbox_name_by_text(String blackboxName) {
        createEntityPage.insertTextToBlackboxName(blackboxName);
    }

    @When("^I click Next button$")
    public void click_next_button() {
        createEntityPage.clickNextButton();
    }

    @Then("^New page is displayed$")
    public void i_should_see_new_page() {
        assertThat(newPage.getNewPageImage().isDisplayed())
                .as("New page is displayed")
                .isTrue();
    }
}

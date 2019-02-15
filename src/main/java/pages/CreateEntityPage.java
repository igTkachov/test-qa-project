package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

public class CreateEntityPage {
    protected static WebDriver driver;

    private static final String ENTITY_TYPE_CSS = ".entity-type";
    private static final String ENTITY_NAME_CSS = ".entity-name";
    private static final String PRIVATE_BUTTON_CSS = ".#ptivate";
    private static final String BLACKBOX_NAME_CSS = ".blackbox-name";
    private static final String NEXT_BUTTON_CSS = "#next-button";

    public CreateEntityPage clickNextButton() {
        driver.findElement(By.cssSelector(NEXT_BUTTON_CSS));
        return this;
    }

    public CreateEntityPage chooseEntityType(String entityType) {
        Select entityTypes = new Select(driver.findElement(By.cssSelector(ENTITY_TYPE_CSS)));
        entityTypes.selectByVisibleText(entityType);
        return this;
    }

    public CreateEntityPage insertTextToEntityName(String entityName) {
        driver.findElement(By.cssSelector(ENTITY_NAME_CSS)).sendKeys(entityName);
        return this;
    }

    public CreateEntityPage insertTextToBlackboxName(String blackboxName) {
        driver.findElement(By.cssSelector(BLACKBOX_NAME_CSS)).sendKeys(blackboxName);
        return this;
    }

    public CreateEntityPage clickPrivateCheckbox() {
        driver.findElement(By.cssSelector(PRIVATE_BUTTON_CSS)).click();
        return this;
    }
}

package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class NewPage {

    protected static WebDriver driver;

    private static final String NEW_PAGE_IMAGE_CSS = "#header-img";

    public WebElement getNewPageImage() {
        return driver.findElement(By.cssSelector(NEW_PAGE_IMAGE_CSS));
    }
}

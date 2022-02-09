package steps;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.Então;
import io.cucumber.java.pt.Quando;
import org.junit.Assert;
import org.junit.Before;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import java.util.concurrent.TimeUnit;

public class TesteLogin {
    WebDriver driver;
    @Before
    public void inicio() {
        System.setProperty("webdriver.chrome.driver", "C:\\chromedriver.exe");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }
    @Dado("que o usuário está na tela de login")
    public void que_o_usuário_está_na_tela_de_login() {
        driver.get("https://www.saucedemo.com/");
    }
    @Quando("preenche o campo usarname com {string} e o campo password com {string}")
    public void preenche_o_campo_usarname_com_e_o_campo_password_com(String usuário, String senha) {
        driver.findElement(By.id("user-name")).sendKeys(usuário);
        driver.findElement(By.id("password")).sendKeys(senha);
    }
    @Quando("clica no botão login")
    public void clica_no_boãto_login() {
       driver.findElement(By.id("login-button")).click();
    }
    @Então("visualiza a {string} de erro")
    public void visualiza_a_de_erro(String mensagem) {
        Assert.assertEquals(mensagem,driver.findElement(By.tagName("h3")).getText());
        System.out.println(mensagem);
    }
    @Então("tem acesso a página e visualiza {string}")
    public void tem_acesso_a_página_e_visualiza(String produto) {
        driver.findElement(By.className("title")).getText();
    }
}
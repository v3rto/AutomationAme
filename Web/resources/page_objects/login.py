from PageObjectLibrary import PageObject


class login(PageObject):
    PAGE_URL = "/login"

    _locators = {
        "create_email": "id=email_create",
        "create_account_button": 'xpath=.//button[@id="SubmitCreate"]',
        "customer_firstname": "xpath=//input[@id='customer_firstname']",
        "customer_lastname": "id=customer_lastname",
        "password": "name=passwd",
        "address": "name=address1",
        "city": "name=city",
        "state_picklist": "id=id_state",
        "postcode": "name=postcode",
        "mobile_phone": "name=phone_mobile",
        "register_button": "id=submitAccount",
        "home_button": "css=#center_column > ul > li > a > span > i",
        "email": "id=email",
        "senha": "id=passwd",
        "signin_button": "xpath=//button[@id='SubmitLogin']",
    }

    def enter_create_email(self, e_mail):
        """Inserindo e-mail para cadastro"""
        self.selib.wait_until_element_is_visible(self.locator.create_email)
        self.selib.input_text(self.locator.create_email, e_mail)

    def click_create_account_button(self):
        """Click em Create Account"""
        self.selib.click_button(self.locator.create_account_button)

    def enter_customer_firstname(self, customer_firstname):
        """Insira o primeiro nome pessoal"""
        self.selib.wait_until_element_is_visible(self.locator.customer_firstname)
        self.selib.input_text(self.locator.customer_firstname, customer_firstname)

    def enter_customer_lastname(self, customer_lastname):
        """Insira o sobrenome"""
        self.selib.input_text(self.locator.customer_lastname, customer_lastname)

    def enter_password(self, password):
        """Insira a senha"""
        self.selib.input_text(self.locator.password, password)

    def enter_firstname(self, firstname):
        """Insira o primeiro nome"""
        self.selib.input_text(self.locator.firstname, firstname)

    def enter_lastname(self, lastname):
        """Insira o último nome"""
        self.selib.input_text(self.locator.lastname, lastname)

    def enter_address(self, address):
        """Insira o endereço"""
        self.selib.input_text(self.locator.address, address)

    def enter_city(self, city):
        """Insira a cidade"""
        self.selib.input_text(self.locator.city, city)

    def select_state_option(self, state_option):
        """Click na picklist de Estado"""
        self.selib.select_from_list_by_label(self.locator.state_picklist, state_option)

    def enter_postcode(self, postcode):
        """Insira o código postal"""
        self.selib.input_text(self.locator.postcode, postcode)

    def enter_mobile_phone(self, mobile_phone):
        """Insira o número do celular"""
        self.selib.input_text(self.locator.mobile_phone, mobile_phone)

    def click_register_button(self):
        """Click em Register"""
        self.selib.click_button(self.locator.register_button)

    def click_home_button(self):
        """Click em Home"""
        self.selib.click_element(self.locator.home_button)

    def enter_email(self, email):
        """Insira o e-mail"""
        self.selib.input_text(self.locator.email, email)

    def enter_senha(self, senha):
        """Insira o e-mail"""
        self.selib.input_text(self.locator.senha, senha)

    def click_signin_button(self):
        """Click em Sign in"""
        self.selib.click_button(self.locator.signin_button)

<p align="center">
  <a href="" rel="noopener">
 <img width=300px height=169px src="https://icehousecorp.com/wp-content/uploads/2022/07/robot-f-300x169.png" alt="Project logo"></a>
</p>

<h3 align="center">Automation Selenium Library With Robot Framework</h3>

---

## About

This is about testing OrangeHRM website with selenium library with this list of test cases 

> 1. Login and logout
> 2. Apply leave
> 3. Cancel leave
> 4. Update personal details
> 5. Update contact details
> 6. Add job title

## 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them.
- First things first, you should install the Python first, you can download [here](https://www.python.org/), don't forget to add it into your ENV Var on your OS
- To verify your already set it up correctly, You need to run this snippet on your terminal ```python -V``` if on your terminal give a feedback of the version that you're instal, that is a good sign.
- Next install PIP, see on this article [here](https://phoenixnap.com/kb/install-pip-windows)
- After that, Install Robot Framework through PIP, type this snippet on your terminal ```pip install robotframework```, to check it the framework already installed, type this snippet ```robot --version```
- Then because we're using External Library (Selenium Library), then we need to install that library too.
- Type this snippet to install Selenium ```pip install --upgrade robotframework-seleniumlibrary```

## Running The Test

- Don't forget to clone this repo
- Open a terminal inside the repo
- Run this snippet to run the test ```robot -d Output Tests/TestCase.robot```

## ⛏️ Built Using <a name = "built_using"></a>

- [RobotFramework](https://robotframework.org/) - Automation Framework
- [Python](https://www.python.org/) - Programming Language
- [Selenium](https://www.selenium.dev/) - Library Automation

## ✍️ Authors <a name = "authors"></a>

- [@arifldhewo](https://github.com/arifldhewo)

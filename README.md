# COMP 311: Lab 0

The goal of this lab is to get comfortable with the basic conventions of circuit diagrams, such as power, ground, wires, mechanical switch, and light emitting diode (LED). At the end, you should be comfortable with

- Working with GitHub Desktop,
- designing and testing simple circuits using the Digital software application, and
- submitting your solution to Gradescope.

<details open>
  <summary>Overview</summary>

- [COMP 311: Lab 0](#comp-311-lab-0)
  - [GitHub Desktop](#github-desktop)
  - [Digital: Circuit design and simulation software](#digital-circuit-design-and-simulation-software)
    - [Windows installation](#windows-installation)
    - [macOS/Linux installation](#macoslinux-installation)
      - [Optional](#optional)
    - [Instructions for Digital](#instructions-for-digital)
  - [Circuit design](#circuit-design)
  - [First circuit](#first-circuit)
  - [Mechanical AND gate](#mechanical-and-gate)
  - [Submit your assignment](#submit-your-assignment)
</details>

## GitHub Desktop

Throughout this semester, you will be responsible for managing (cloning & committing) to your GitHub repositories so they can be linked to Gradescope for assignment submission and grading. Instead of using git commands in a terminal, we strongly recommend that you use [GitHub Desktop](https://desktop.github.com/) to simplify the process.

The links below provide step-by-step instructions along with visual aids about how to use GitHub Desktop:

- [Install](https://docs.github.com/en/desktop/installing-and-configuring-github-desktop/installing-and-authenticating-to-github-desktop/installing-github-desktop) GitHub Desktop.
- [Authenticate](https://docs.github.com/en/desktop/installing-and-configuring-github-desktop/installing-and-authenticating-to-github-desktop/authenticating-to-github) to GitHub.
- [Clone](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/adding-and-cloning-repositories/cloning-a-repository-from-github-to-github-desktop) a repository from GitHub to GitHub Desktop.
- [Commit](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch/committing-and-reviewing-changes-to-your-project) your changes to the repository.
- [Push](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch/pushing-changes-to-github) your changes to the repository.

Before proceeding, please clone this repository using the clone instructions provided above.

## Digital: Circuit design and simulation software

A Java Runtime Environment (at least JRE 8) is required to run Digital. You should already have one if you're using the same computer you used in COMP 210 or COMP 301. If not, please search online for installation instructions for your specific OS and install. **Make sure it can be run from the command line, and check the version with `java --version`**.

### Windows installation

Follow the instructions on the [Digital](https://github.com/hneemann/Digital) GitHub page for downloading and running the software program (no installation required). In short, you simply download the .zip file, unzip it, and run the software.

To start Digital, simply double click the downloaded `Digital.exe` executable file.

Please skip over the macOS/Linux installation section to [Instructions for Digital](#instructions-for-digital).

### macOS/Linux installation

Follow the instructions on the [Digital](https://github.com/hneemann/Digital) GitHub page for downloading and running the software program (no installation required). In short, you simply download the .zip file and unzip it.

To start Digital, open a terminal and run `Digital.jar` with `java -jar PATH/TO/Digital.jar`.

#### Optional

If you encounter an uncommon bug where the Open menu does not display `.dig` files, then open `.dig` files by passing them as a command-line argument. For example, if you want to open the file `~/circuit.dig`, then run `java -jar Digital.jar ~/circuit.dig`. You can drag a file from Finder to the terminal to automatically paste its absolute path.

To easily start Digital without having to type the path to `Digital.jar`, you can alias the command. Run `echo "alias digital=\"java -jar $ABSOLUTE_PATH_TO_DIGITAL_JAR\"" >> $HOME/.zshrc`, replacing `$ABSOLUTE_PATH_TO_DIGITAL_JAR` with your **absolute** path to `Digital.jar`. If your default shell is bash (check with `echo $SHELL`), then you'll want to use `.bashrc` instead. **Restart your terminal**.

You'll now be able to type `digital` or `digital <file>` from any directory to run Digital.

### Instructions for Digital

Within Digital, you can access a useful help document by clicking **Help > Documentation**. We recommend reading

- `Section 1`: How to navigate through the program and create simple circuits.
- `Secion 3.2`: LED with two connections.
- `Sections 6.1 and 6.2`: Ground and voltage supply or **power**.
- `Section 13.1`: Mechanical on/off switch.

## Circuit design

Using Digital, we'll wire up a very simple circuit that uses power, ground, one or more switches, and one LED. In general, when the switch is closed, the LED will turn on (color will be red) and when the switch is open, the LED will be turned off (color will be black). Adding an LED is a great way to visually test the output of your circuit.

## First circuit

Start Digital and open the file `Lab00a.dig`. You do not need to edit this circuit in any way; it serves simply as an example of what a completed circuit in Digital looks like. Use this file to familiarize yourself with the Digital software. For example, pressing the triangular `play` button in the top right corner of the Digital software will allow you to simulate the circuit. Try flipping the switch and seeing how it affects the output of the LED. Carefully inspect how the LED is wired, and notice which components represent power (logic 1) and which represent ground (logic 0). When you press the `play` button, certain wires will light up - these wires are the ones that are connected to power. Understanding and analyzing how this circuit works will be crucial to being able to complete the second part of this lab.

**What to submit?** There is nothing to "submit" for this part of the lab. Just make sure the `Lab00a.dig` file is still included in your repository when you submit on Gradescope. However, please note, if you do not spend enough time on this section of the lab understanding how the circuit diagraming works, you will not be able to complete the second part of this lab.

## Mechanical AND gate

This part is a slight enhancement of the circuit in Section 3. We'll modify our circuit to act as a kind of **“mechanical AND gate,”** where the LED will turn on only if two switches are both in the **closed** position. This is simply wiring two switches in series, not using any **AND** gates (or any logic gates at all).

The one complication in this part of the lab is that we want to wire the two switches in such a way that the LED will only turn on when both switches are in the closed position. This will require some small modification to the switch wiring: one switch will need to select between ground and the output of the previous switch.

Please do *not* delete or rename the switches (moving them is fine, though unnecessary). The autograder uses the component names `switch1` and `switch2` during testing. In future Digital labs, you will add names to components yourself, but this is already done for you in this lab.

<details>
  <summary>Click here for instructions if you've already deleted or renamed the switches
  </summary>
If you have already deleted them, then either revert changes in your git repo or add the switches back. If you add them back, you need to right-click the component to bring up options (on macOS, either use a mouse or go to your settings, search for "Trackpad", and make sure "Secondary click" is set to "Click or Tap with Two Fingers"), select "Advanced", check "Switch behaves like an input", and rename them to the proper names.

![image](https://user-images.githubusercontent.com/55986131/149873493-8da11454-750e-466d-b3ae-31c0fd0025d6.png)
</details>

Construct your design in Digital using the `Lab00b.dig` file. You should only need to add wires and delete wires, not add any additional components. Verify that your design works in Digital by using the triangular `play` button to simulate the circuit. The LED should light up only when both switches are in the closed position.

**Note:** It is highly unlikely but possible to create a mechanical **AND** gate design that seems to work according to the first paragraph of this section yet fails the autograder tests. This would occur if you wire the circuit in a specific improper way (again, most people will not encounter this). These designs don't pass the tests because they are considered incorrect.

**What to submit?** After modifying `Lab00b.dig`, you should commit and push your changes to your Lab 0 GitHub repo.

## Submit your assignment

Assignments will be submitted through [Gradescope](https://www.gradescope.com).

You should already be enrolled in the COMP 311 course on Gradescope. If you are not, please check the course website and syllabus for self-enrollment instructions. If you're unable to self-enroll, please contact your cohort leader(s) and we'll manually add you.

To submit your assignment, please follow the basic steps provided below. If you're unable to perform any of the steps, please reach out to your **cohort** and **cohort leader** as soon as possible. That is, give yourself time to resolve any technical issues using GitHub, GitHub Desktop, and Gradescope well before the assignment due date.

1. Submit modifications using the **commit** GitHub Desktop instructions.
2. Update remote (origin) repository using the **push** GitHub Desktop instructions.
3. Go to the COMP 311 course in Gradescope and click on the assignment called **Lab 0**.
4. Click on the option to **Submit Assignment** and choose GitHub as the submission method. You may be prompted to sign in to your GitHub account to grant access to Gradescope. When this occurs, grant access to the Comp311 organization.
5. You should see a list of your public repositories. Select the one named **lab-00-yourname** and submit it.
6. Your assignment should be autograded within a few seconds and you will receive feedback.
7. If you receive all the points, then you have completed this lab assignment! Otherwise, you are free to keep pushing commits to your GitHub repository and submit for regrading up until the deadline of the lab.

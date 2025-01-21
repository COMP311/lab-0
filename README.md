<!-- omit in toc -->
# Lab 0

This lab introduces [Digital](https://github.com/hneemann/Digital), an educational software tool for designing and simulating digital circuits. You will also learn about some basic conventions of circuits, such as power, ground, wires, mechanical switch, and light-emitting diode (LED).

<details open>
  <summary>Overview</summary>

- [Setup](#setup)
  - [SSH setup](#ssh-setup)
  - [Clone repo](#clone-repo)
  - [Install Digital](#install-digital)
    - [Windows](#windows)
    - [macOS/Linux installation](#macoslinux-installation)
      - [Optional steps for convenience](#optional-steps-for-convenience)
- [Digital tutorial](#digital-tutorial)
  - [Tips](#tips)
    - [Documentation](#documentation)
    - [Component tree view](#component-tree-view)
    - [Note for macOS users](#note-for-macos-users)
- [Example circuit](#example-circuit)
- [Mechanical AND gate](#mechanical-and-gate)
- [Submit your assignment](#submit-your-assignment)
</details>

## Setup

### SSH setup

As we did in COMP 211, we will clone repositories from GitHub using SSH. If you have already generated an SSH key on your computer and connected it to your GitHub account, skip to [Clone repo](#clone-repo).

To generate a new SSH key, follow [these instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key). Do only the steps in the section named "Generating a new SSH key".

On step 2, accept the default file location by pressing enter. On step 3, when prompted for a passphrase, you may use no passphrase by simply pressing enter twice.

Then, follow [these instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account) to add your SSH public key to your GitHub account.

### Clone repo

Run `git clone <link>`, where `<link>` is the SSH link to your Lab 0 repository that can be found in GitHub.

![SSH link](https://i.imgur.com/uewDAq2.png)

### Install Digital

Digital allows us to design, simulate, and test circuits.

A Java Runtime Environment (at least JRE 8) is required to run Digital. You should already have this if you're using the same computer you used in COMP 210 or COMP 301. If not, search online for installation instructions for your specific OS and install. You can verify that it works and check its version with `java --version`.

1. Download a `.zip` file with Digital software files by clicking [here](https://github.com/hneemann/Digital/releases/latest/download/Digital.zip).
2. Unzip it.
3. Move the folder (not the `.zip` file) to an easily accessible location on your computer. We will need to access this frequently.

#### Windows

To start Digital, double-click `Digital.exe`.

#### macOS/Linux installation

To start Digital, run `java -jar PATH/TO/Digital.jar`, where `PATH/TO/Digital.jar` is the path to your `Digital.jar` file.

##### Optional steps for convenience

To start Digital without having to type the path to `Digital.jar`, alias the command. Run `echo "alias digital=\"java -jar ABSOLUTE_PATH_TO_DIGITAL_JAR\"" >> $HOME/.zshrc`, replacing `ABSOLUTE_PATH_TO_DIGITAL_JAR` with your **absolute** path to `Digital.jar`.

macOS's default shell is zsh, so this alias command goes in `~/.zshrc`. If your default shell is not zsh (check with `echo $SHELL`), replace `.zshrc` with your shell's configuration file (e.g., `.bashrc` for bash).

Restart your terminal after running this command.

You can now start Digital from any directory by running `digital`. You can also open a specific circuit file by running `digital PATH/TO/circuit.dig`.

<details>
  <summary>Potential bug where Open menu does not display .dig files</summary>

If you encounter an uncommon bug where the Open menu does not display `.dig` files, open a `.dig` file by passing it as a command-line argument. For example, if you want to open the file `~/circuit.dig`, run `java -jar Digital.jar ~/circuit.dig` (or `digital ~/circuit.dig` if you did the optional steps above). You can drag a file from Finder to the terminal to automatically paste its absolute path.

</details>

## Digital tutorial

The first time you start Digital, you should be greeted with a built-in tutorial. If it does not show up, start it by clicking View > Start Tutorial.

Complete the tutorial, which shows you how to build and simulate a simple circuit with an XOR gate, 2 inputs, and 1 output.

### Tips

#### Documentation

As shown in the tutorial, you can right-click any component to open a menu and configure settings for that component. The menu also contains a "Help" button that opens documentation for that component. Whenever you don't know what a component does or need to review, please refer to the documentation.

You may also download a PDF containing all documentation [here](https://github.com/hneemann/Digital/releases).

#### Component tree view

To make it easier to access components, you can enable Component Tree View. To do so, click View > Component Tree View.

To make this the default behavior, click Edit > Settings > Component tree view is visible at startup.

You may also change the language here, if you want.

#### Note for macOS users

macOS users, if control-click does not work for you, try right clicking with two-finger tap. If this is not already enabled, then do the following:

1. Press command+space to open Spotlight Search.
2. Type "trackpad" and press enter.
3. Set secondary click to "Click or Tap with Two Fingers".

## Example circuit

In Digital, open [example.dig](example.dig). This is a simple example circuit containing a light-emitting diode (LED) and a mechanical switch.

First, simulate the circuit by pressing the triangular Play button. Then, click the switch to toggle it and note the effect on the LED. The behavior should be very simple to understand.

To read about how an LED works, right-click the LED component and click "Help". You may also want to read about the other components Supply voltage (logic 1 or) and Ground (logic 0).

Nothing needs to be submitted for this part, but make sure you understand it to be able to complete the next part.

## Mechanical AND gate

Open `and.dig` in Digital.

In this part, you'll slightly enhance the circuit in `example.dig`. Specifically, create a circuit that acts like a "mechanical AND gate", where the LED turns on only if both switches are in the closed position. You need only add wires (i.e., wire the switches in series), and don't use any logic gates or any additional components.

Do not delete or rename the switches (moving them is fine, though unnecessary). The autograder requires the switches to be named `switch1` and `switch2`.

<details>
  <summary>Click here for instructions if you've already deleted or renamed the switches</summary>

If you have already deleted or renamed the switches, then either revert changes in your repo (`git restore .`) or add the switches back.

If you decide to add the switches back, the Switch component can be found at Components > Switches > Switch. Additionally, right-click a switch, select "Advanced", check "Switch behaves like an input", and name it `switch1`. Do the same for the other switch, but name it `switch2`.

![image](https://user-images.githubusercontent.com/55986131/149873493-8da11454-750e-466d-b3ae-31c0fd0025d6.png)

</details>

Verify that your design works according to the specification above by simulating the circuit and testing it.

**Note:** It is unlikely but possible to create a design that seems to work according to the specification given but fails the autograder tests. This would occur if you wire the circuit in a specific improper way. These designs don't pass the tests because they are considered incorrect.

## Submit your assignment

See the [instructions for assignment submission](https://github.com/COMP311/submit-assignment).

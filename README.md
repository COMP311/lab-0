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
    - [macOS/Linux](#macoslinux)
      - [Optional steps for convenience](#optional-steps-for-convenience)
- [Digital tutorial](#digital-tutorial)
  - [Tips](#tips)
    - [Documentation](#documentation)
    - [Component tree view](#component-tree-view)
    - [Note for macOS users](#note-for-macos-users)
- [Example circuit](#example-circuit)
- [Mechanical AND gate](#mechanical-and-gate)
  - [Testing](#testing)
- [Tunnels](#tunnels)
- [Splitter/merger](#splittermerger)
  - [Testing](#testing-1)
- [Submit your assignment](#submit-your-assignment)
</details>

## Setup

### SSH setup

As we did in COMP 211, we will clone GitHub repositories via SSH. If you have already generated an SSH key on your computer (not inside the COMP 211 container) and connected it to your GitHub account, skip to [Clone repo](#clone-repo).

To generate a new SSH key, follow [these instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key). Do only the steps in the section named "Generating a new SSH key".

On step 2, accept the default file location by pressing enter. On step 3, when prompted for a passphrase, you may use no passphrase by simply pressing enter twice.

Then, follow [these instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account) to add your SSH public key to your GitHub account.

### Clone repo

Run `git clone <link>`, where `<link>` is the SSH link (not HTTPS) to your Lab 0 repository.

<p align="center">
  <img src="https://i.imgur.com/aJEcomI.png">
</p>

If you get an error that looks like the following, then the [SSH setup](#ssh-setup) steps were not done correctly. Redo them.

```text
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```

Otherwise, it was successful, and you can confirm by running `ls`.

### Install Digital

Digital allows us to design, simulate, and test circuits.

A Java Runtime Environment (at least JRE 8) is required to run Digital. You should already have this if you're using the same computer you used in COMP 210 or COMP 301. If not, search online for installation instructions for your specific OS and install. You can verify that it works and check its version with `java --version`.

1. Download a `.zip` file with Digital software files by clicking [here](https://github.com/hneemann/Digital/releases/latest/download/Digital.zip).
2. Unzip it.
3. Move the folder (not the `.zip` file) to an easily accessible location on your computer. We will need to access this frequently.

#### Windows

To start Digital, double-click `Digital.exe`.

#### macOS/Linux

To start Digital, run `java -jar PATH/TO/Digital.jar`, where `PATH/TO/Digital.jar` is the path to your `Digital.jar` file.

##### Optional steps for convenience

To start Digital without having to type the path to `Digital.jar`, alias the command. Run `echo "alias digital=\"java -jar ABSOLUTE_PATH_TO_DIGITAL_JAR\"" >> $HOME/.zshrc`, replacing `ABSOLUTE_PATH_TO_DIGITAL_JAR` with your **absolute** path to `Digital.jar`.

macOS's default shell is zsh, so this alias command is appended to `~/.zshrc`. If your default shell is not zsh (check with `echo $SHELL`), replace `.zshrc` with your shell's configuration file (e.g., `.bashrc` for bash).

Restart your terminal after running this command.

You can now start Digital from any directory by running `digital`. You can also open a specific circuit file by running `digital PATH/TO/circuit.dig`.

<details>
  <summary>Fix for potential bug where Open menu does not display .dig files</summary>

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

In Digital, open [example.dig](example.dig). This is a simple circuit that contains a light-emitting diode (LED) and a mechanical switch. Ignore the green box labeled "Test" for now.

Simulate the circuit by pressing the triangular Play button. Then, click the switch to toggle it and note how this affects the LED.

To read about how an LED works, right-click the LED component and click "Help". You may also want to read about the other components Supply voltage (logic 1 or) and Ground (logic 0).

Nothing needs to be submitted for this part, but make sure you understand the circuit to be able to complete the next part.

## Mechanical AND gate

In Digital, open [and.dig](and.dig).

In this file, you'll slightly enhance the previous circuit. Specifically, create a circuit that acts like a "mechanical AND gate", where the LED turns on only if both switches are in the closed position. You need only add wires (i.e., wire the two switches in series). Don't use any logic gates or any additional components.

Don't delete or rename the switches (moving them is fine, though unnecessary). The test cases require the switches to have the specific given names.

<details>
  <summary>Click here for instructions if you've already deleted or renamed the switches</summary>

If you have already deleted or renamed the switches, then either revert changes in your repo (`git restore .`) or add the switches back.

If you decide to add the switches back, the Switch component can be found at Components > Switches > Switch. Additionally, right-click a switch, select "Advanced", check "Switch behaves like an input", and name it `switch_0`. Do the same for the other switch, but name it `switch_1`.

</details>

### Testing

To manually verify that your circuit works according to the specification above, click the triangular Play button at the top and test your circuit manually.

To automatically test your circuit, click this button at the top to run the tests in the green Test Case component.

<p align="center">
  <img src="https://i.imgur.com/vTOPJbC.png">
</p>

You should then see a menu like this:

<p align="center">
  <img src="https://i.imgur.com/UMhr7Kd.png">
</p>

If you don't see this menu and receive an error, it's likely because you renamed or deleted the given components. To resolve this, see the instructions [above](#mechanical-and-gate).

The menu looks like a truth table! Ignore the value "Z" for now - you will learn what this means in a later lecture.

In this table, the `switch_0` and `switch_1` columns are inputs, and `LED` is the output that is checked. Each row represents a single test case. For each test case, we hardcode the inputs and expected output. Digital then simulates the circuit with the given inputs and checks whether the output is correct or not. If you click on L2 or any other row, you'll see how this works (and this is also useful for debugging).

If a test case fails, the menu would look like this:

<p align="center">
  <img src="https://i.imgur.com/apoaRFY.png">
</p>

In L4, the "E: Z / F: 1" means that for the inputs in L4, the expected output is Z, but the actual output is 1.

**Note:** It is unlikely but possible to create a design that seems to work according to the specification given but fails the tests. This would occur if you wire the circuit in a specific improper way. These designs don't pass the tests because they are considered incorrect.

## Tunnels

The tunnel component will save you a lot of time debugging by making your circuits look cleaner.

A tunnel allows you to draw an "invisible wire" between two points. For example, this circuit

<p align="center">
  <img src="https://i.imgur.com/d2pgQBD.png">
</p>

is equivalent to

<p align="center">
  <img src="https://i.imgur.com/MZy912B.png">
</p>

Perhaps this doesn't immediately seem useful. However, consider the following two circuits, one without tunnels and one with tunnels:

<p align="center">
  <img src="https://i.imgur.com/yhsAHK1.png">
</p>

<p align="center">
  <img src="https://i.imgur.com/5oPGP0g.png">
</p>

The two circuits are logically equivalent, but the latter is clearly easier to work with. We strongly recommend that you use tunnels for labs involving Digital.

The tunnel component can be found at Components > Wires > Tunnel. All tunnels with the same name (which is set by right-clicking the tunnel) are connected and have the same value.

There is nothing to submit for this part, but please keep tunnels in mind for future labs.

## Splitter/merger

So far, we have seen only 1-bit values on inputs, outputs, and wires. However, multi-bit values are common. For example, a 32-bit number in your computer can be represented as 32 wires that each carry 1 bit. However, we do not want to draw 32 wires every time, and it is preferable draw a single wire that denotes 32 bits.

To do so in Digital, we first create an input component and set it to have multiple data bits (e.g., 2-bit). We also set its number format to binary.

<p align="center">
  <img src="https://i.imgur.com/F2iHpQ4.png">
</p>

<p align="center">
  <img src="https://i.imgur.com/Q7LazJj.png">
</p>

Then we use the splitter/merger component. For example,

<p align="center">
  <img src="https://i.imgur.com/twDwoIP.png">
</p>

While simulating, we set the input's value to `0b10`. The two bits are in the same wire and are sent into the splitter/merger, which splits the 2-bit wire into bit 1 and bit 0. Note that bit 1 is on and bit 0 is off, as expected.

In general, the splitter/merger component is capable of splitting a multi-bit value into smaller parts or merging multiple values into a single value. To be concise, we'll use the term "splitter" from now on, but you should remember that it can both split and merge.

Here's another example, in which we split a 16-bit input into two separate bytes.

<p align="center">
  <img src="https://i.imgur.com/UurPLJk.png">
</p>

The splitter is configured as follows:

<p align="center">
  <img src="https://i.imgur.com/yTgC25U.png">
</p>

The input is 16-bit, so we set "Input Splitting" to 16, which creates the blue input dot labeled 0-15 on the splitter. We want two groups of 8 bits, so we set "Output Splitting" to 8,8. The comma separates the two groups. This creates two red output dots labeled 8-15 and 0-7 on the splitter. Lastly, both outputs are set to be 8-bit.

If the bit widths of the input(s) or output(s) do not match the bit widths of their corresponding connections with the splitter, you will receive an error when you attempt to simulate the circuit.

To test your understanding of this section, open [splitter.dig](splitter.dig). This file contains a 10-bit input displayed in binary format and a 1-bit output. Do not change the bit widths of the input or output. You may change the number format, though this is unnecessary.

In this file, create a circuit that outputs 1 if the 10-bit input is negative and odd when interpreted as a 2's complement number. Otherwise, the output should be 0.

### Testing

To test your circuit, the steps are the same as the [earlier steps](#testing) for the mechanical AND gate.

## Submit your assignment

See the [instructions for assignment submission](https://github.com/COMP311/submit-assignment).

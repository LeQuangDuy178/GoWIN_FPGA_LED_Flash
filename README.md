# GoWIN_FPGA_LED_Flash
Simple LED Flash program using GoWin FPGA

1. Reference Document
Please refer to the "Gowin Development Board FPGA Logic Design and Verification Tutorial V1.3_ACG525.pdf" file for more information on the board and its supporting led_flash demo

2. led_flash demo:
    2.1. Tools Installation and Board Setup:
        - Refer to the section 1.0 of the reference document for more information on the Tools Installation, target IDE is the "Gowin_V1.9.11.01 Education (64-bit).exe" file.
        - Refer to the doc/setup.jpg for Board Setup. The target board is GoWin ACG525, with 1 power cable, 1 GoWin USB Cable and 1 USB-C wire are needed.
    2.2. Running Demo:
        - In GoWin IDE, open the target project.
        - Set the target device as following configuration from doc/target_device_config.jpg
        - Implement the led_flash.v RTL Design file, remember to set it as top module.
        - Implement the led_flash.cst constraint file, the format of this file is constructed from the configurations in doc/design_constraint_floorplanner.jpg.
        - Click Run All, the GoWin IDE will execute both Synthesis and Implementation stages to create bitstream file led_flash.fs
        - Click GoWin Programmer, the window will show the target programming device, and USB Cable detected through the appropriate port in the computer. 
        - With all the settings, click programming to program the bitstream file into the board and observe the RTL behavior on the board.
        - Refer to doc/led_flash_demo.mp4 for more detail instruction.
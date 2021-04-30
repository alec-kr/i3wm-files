#####################################
#  This program is used to control  #
# the charging threshold on laptops #
#           -storman121             #
#####################################


# Import the PyQt5 modules needed to build the GUI
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.Qt import *

import sys

# The os module is used to execute the commands that edit the values
# in the charge threshold file
import os

# Create a dialog box
class myDialog(QDialog):
	def __init__(self):
		QDialog.__init__(self)

		# Set the window title
		self.setWindowTitle("Power Management Tool")
		
		# Use the vertical box layout
		layout = QVBoxLayout()

		# Create a label
		label = QLabel("Select the battery charge threshold")

		# Create the buttons for the different thresholds
		sixty_btn = QPushButton("60%")
		eighty_btn = QPushButton("80%")
		full_btn = QPushButton("100%")

		# Add the label to the layout
		layout.addWidget(label)

		#Add the buttons to the layout
		layout.addWidget(sixty_btn)
		layout.addWidget(eighty_btn)
		layout.addWidget(full_btn)

		self.setLayout(layout)
		
		# Runs a function if any of the buttons are clicked
		sixty_btn.clicked.connect(sixty_clicked)
		eighty_btn.clicked.connect(eighty_clicked)
		full_btn.clicked.connect(full_clicked)


# These 3 functions update the values of charge_control_end_threshold with the repsective
# value of the button that was clicked

# In this case,  echo 60, and use the tee function to write the output to charge_control_end_threshold
def sixty_clicked():
	os.system("echo 60 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold")

def eighty_clicked():
	os.system("echo 80 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold")

def full_clicked():
	os.system("echo 100 | sudo tee /sys/class/power_supply/BAT0/charge_control_end_threshold")


app = QApplication(sys.argv)
dialog = myDialog()

# Show the box
dialog.show()

# Start the event loop
app.exec_()

import sys
import basic_maths as bm

from PySide6.QtWidgets import (
    QApplication,
    QLabel,
    QLineEdit,
    QMainWindow,
    QPushButton,
    QVBoxLayout,
    QWidget,
)

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        self.setWindowTitle("Widgets App")

        layout = QVBoxLayout()

        self._number_1 = QLineEdit('1')
        layout.addWidget(self._number_1)

        self._operator = QLineEdit('+')
        layout.addWidget(self._operator)

        self._number_2 = QLineEdit('1')
        layout.addWidget(self._number_2)

        btn = QPushButton("Calculate")
        btn.clicked.connect(self._basic_maths)
        layout.addWidget(btn)

        self._label = QLabel("")
        layout.addWidget(self._label)


        central_widget = QWidget()
        central_widget.setLayout(layout)

        self.setCentralWidget(central_widget)

    def _basic_maths(self):

        if self._operator.text() == '+':
            result = bm.add_two_numbers(self._number_1.text(), self._number_2.text())
        elif self._operator.text() == '-':
            result = bm.subtract_two_numbers(self._number_1.text(), self._number_2.text())
        elif self._operator.text() == '*':
            result = bm.multiply_two_numbers(self._number_1.text(), self._number_2.text())
        else:
            result = 'error; allowed operators are +, -, or *'
        self._label.setText(result)


if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    app.exec()